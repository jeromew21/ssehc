#include "game/chessboard.hpp"

/**
 * The rationale for doing an entirely different function for check situations
 * is that there are a much more limited number of moves in such a sitaution:
 * if it's double check, then you can only move,
 * and if it's single check you can only move, block, or capture.
 */
MoveList<256> Board::produce_uncheck_moves_()
{
  assert(maps_generated_);
  assert(is_check());

  MoveList<256> mv_list;
  return mv_list;

  // // todo make this work
  // MoveVector<256> v;

  const Color curr_turn = turn();
  const Color enemy_color = oppositeColor(curr_turn);
  const u64 king_position = bitboard_[piece::get_king(curr_turn)];
  const u64 king_square = u64ToSquare(king_position);

  const u64 attacker_positions = attackers_to_(king_position, enemy_color);
  const int check_count = hadd(attacker_positions);

  const u64 friendly_occ = occupancy(curr_turn);
  const u64 enemy_occ = occupancy(enemy_color);
  const u64 occ = friendly_occ | enemy_occ;

  // the single check is the harder case because there are more options...
  if (check_count == 1)
  {
    // add captures that aren't pinned
    // add blocks, so that's everything on line w/ attacker and king as fair game

    // any legal move that covers any of targetLocations is going to be an uncheck move.

    u64 target_locations = attacker_positions;

    const PieceType checking_piece = piece_at_(target_locations);
    assert(!piece::is_empty(checking_piece));
    assert(!piece::is_king(checking_piece));

    if (piece::is_bishop(checking_piece) || piece::is_rook(checking_piece) || piece::is_queen(checking_piece))
    {
      // Sliding pieces can be blocked so it's a lot more work.
      const Square checking_piece_location = u64ToSquare(checking_piece);

      bool found_ray = false;
      if (piece::is_rook(checking_piece) || piece::is_queen(checking_piece))
      {
        u64 rook_attacks = move_maps::rookMoves(checking_piece_location, occ);
        if (rook_attacks & king_position)
        {
          found_ray = true;
          for (int d = 0; d < 4; d++)
          {
            u64 ray = rook_attacks & move_maps::rookRay(checking_piece_location, d);
            if (ray & king_position)
            {
              target_locations |= ray;
              break;
            }
          }
        }
      } // end rook ray
      else if (piece::is_bishop(checking_piece) || (piece::is_queen(checking_piece) && !found_ray))
      {
        u64 bishop_attacks = move_maps::bishopMoves(checking_piece_location, occ);
        if (bishop_attacks & king_position)
        {
          found_ray = true;
          for (int d = 0; d < 4; d++)
          {
            u64 ray = bishop_attacks & move_maps::bishopRay(checking_piece_location, d);
            if (ray & king_position)
            {
              target_locations |= ray;
              break;
            }
          }
        }
      } // end bishop ray

      // we have now successfully found all the squares that if occupied will uncheck.
      const u64 enemy_rooks = bitboard_[piece::get_rook(enemy_color)] | bitboard_[piece::get_rook(enemy_color)];
      const u64 enemy_bishops = bitboard_[piece::get_bishop(enemy_color)] | bitboard_[piece::get_queen(enemy_color)];

      // handle pawn pushes
      u64List pawn_bitscan;
      u64 pawns_that_can_block = bitboard_[piece::get_pawn(curr_turn)];
      bitscanAll(pawns_that_can_block, pawn_bitscan);
      for (int i = 0; i < pawn_bitscan.len(); i++)
      {
        u64 pawn_location;
        Square pawn_location_square = u64ToSquare(pawn_location);

        // If removing the pawn would give check, break
        if (move_maps::isAttackedSliding(occ & ~pawn_location, king_position, enemy_rooks, enemy_bishops))
          break;

        u64 single_push = move_maps::pawnMoves(pawn_location_square, curr_turn);
        Square single_push_square = u64ToSquare(single_push);
        if (!(single_push & occ))
        {
          if (single_push & target_locations)
          {
            if (move_maps::isPromotingRank(single_push_square, curr_turn))
            {
              mv_list.PushBack(CMove(pawn_location_square, single_push_square, move_type::QPromotion));
              mv_list.PushBack(CMove(pawn_location_square, single_push_square, move_type::RPromotion));
              mv_list.PushBack(CMove(pawn_location_square, single_push_square, move_type::BPromotion));
              mv_list.PushBack(CMove(pawn_location_square, single_push_square, move_type::KPromotion));
            }
            else
            {
              mv_list.PushBack(CMove(pawn_location_square, single_push_square, move_type::Default));
            }
          }
          if (move_maps::isStartingRank(pawn_location_square, curr_turn))
          {
            u64 double_push = move_maps::pawnDoubleMoves(pawn_location_square, curr_turn);
            if (!(double_push & occ) && double_push & target_locations)
            {
              mv_list.PushBack(CMove(pawn_location_square, u64ToSquare(double_push), move_type::DoublePawn));
            }
          }
        }
      } // end loop over pawns

      u64List target_locations_bitscan;
      bitscanAll(target_locations, target_locations_bitscan);
      // loop over each uncheck destination (capture or block)
      for (int k = 0; k < target_locations_bitscan.len(); k++)
      {
        const u64 target = target_locations_bitscan[k];
        const Square target_square = u64ToSquare(target);

        // the set of friendlies that attack this unchecking square
        u64 unchecking_piece_locations = state_.defend_map_[target_square] & friendly_occ;
        u64List unchecking_piece_locations_bitscan;
        bitscanAll(unchecking_piece_locations, unchecking_piece_locations_bitscan);
        for (int i = 0; i < unchecking_piece_locations_bitscan.len(); i++)
        {
          if (unchecking_piece_locations_bitscan[i] & king_position)
            continue; // ignore king moves for now, they're handled seperately

          u64 unchecking_src = unchecking_piece_locations_bitscan[i];
          Square unchecking_src_square = u64ToSquare(unchecking_src);

          if (!move_maps::isAttackedSliding((occ & (~unchecking_src)) | target, king_position, ~target & enemy_rooks, ~target & enemy_bishops))
          {
            PieceType mover = piece_at_(unchecking_src);
            if (piece::is_pawn(mover))
            {
              // we can't simply move w/ a pawn attack, we need to capture an enemy piece.
              if (enemy_occ & target)
              {
                // promoting capture
                if (move_maps::isPromotingRank(target_square, curr_turn))
                {
                  mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::QPromotion));
                  mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::RPromotion));
                  mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::BPromotion));
                  mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::KPromotion));
                }
                else
                {
                  // regular pawn capture
                  mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::Default));
                }
              }
            }
            else
            {
              // regular block or capture...
              mv_list.PushBack(CMove(unchecking_src_square, target_square, move_type::Default));
            }
          }
        } // end for over pieces that attack target location
      }   // end for over each target
    }     // end sliding pieces if
    else
    {
      // if pawn or knight check
      // the only options we care about here is capturing it with a piece that isn't the king
      // handle en passant here
      // note that sliding pieces can't be stopped with an en passant
      const u64 target = target_locations;
      const Square target_square = u64ToSquare(target_locations);

      const u64 enemy_rooks = ~target & bitboard_[piece::get_rook(enemy_color)] | bitboard_[piece::get_rook(enemy_color)];
      const u64 enemy_bishops = ~target & bitboard_[piece::get_bishop(enemy_color)] | bitboard_[piece::get_queen(enemy_color)];

      u64 pieces_that_capture = state_.defend_map_[target_square] & friendly_occ & ~king_position;
      u64List pieces_bitscan;
      bitscanAll(pieces_that_capture, pieces_bitscan);
      for (int i = 0; i < pieces_bitscan.len(); i++) { 
        u64 src = pieces_bitscan[i];
        if (move_maps::isAttackedSliding(occ & ~src, king_position, enemy_rooks, enemy_bishops))
          break;

        mv_list.PushBack(CMove(u64ToSquare(src), target_square, move_type::Default));
      }
    }
  }

  // now for double checks (or theoretically triple checks if the position is set as such...)
  // check king moves for safety...
}
