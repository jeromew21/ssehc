#ifndef CHESSBOARD_HPP
#define CHESSBOARD_HPP

#include "misc/definitions.hpp"
#include "misc/bits.hpp"
#include "chess/cmove.hpp"
#include "chess/pieces.hpp"
#include "datastructures/board.hpp"

// initialize zobrist hashing scheme
void initializeZobrist();

// populate legal move caches
void populateMoveCache();

int distToClosestCorner(Row r, Col c); // manhattan distance

class Board
{
private:
  u64 bitboard_[12];
  u64 hash_;
  GameStatus status_;
  BoardStateStack state_stack_;

  // shortcut move generator if board is check
  MoveVector<256> produce_uncheck_moves_();

public:
  // non-const getters
  MoveVector<256> legal_moves();
  GameStatus status();

  // might be const depending on implementation
  bool is_check();

  // const getters

  Color turn() const;
  u64 zobrist() const;
  bool can_unmake() const;
  CMove last_move() const;
  u64 occupancy() const; // mask of piece locations
  u64 occupancy(Color color) const;
  std::string fen() const; // output the FEN as a string

  // does a move produce check?
  bool is_checking_move(CMove mv);

  // generate move from src->dest pair
  CMove move_from_src_dest(Square src, Square dest);

  void Reset();
  void MakeMove(CMove mv);
  void UnmakeMove();

  // loading from a FEN string
  void LoadPosition(std::string fen);

  // default constructor
  Board();
};

#endif