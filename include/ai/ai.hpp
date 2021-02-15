#ifndef AI_HPP
#define AI_HPP

#include <limits>
#include <chrono>
#include <atomic>
#include "misc/definitions.hpp"
#include "datastructures/search.hpp"
#include "game/chessboard.hpp"

namespace AI
{
  const NodeType PV = 0;
  const NodeType Cut = 1;
  const NodeType All = 2;

  const int SCORE_MIN = std::numeric_limits<int>::min();
  const int SCORE_MAX = std::numeric_limits<int>::max();
  int evaluation(Board &board);  // absolute
  int flippedEval(Board &board); // depends on turn

  void sendPV(Board &board, int depth, CMove pv_move, int node_count, Score score,
              std::chrono::_V2::system_clock::time_point start);

  CMove rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &out_score,
                 CMove prevPv, int &count,
                 std::chrono::_V2::system_clock::time_point start,
                 std::vector<MoveScoreTuple> &prevScores);

  Score quiescence(Board &board, int depth, int ply_count, Score alpha, Score beta,
                   std::atomic<bool> &stop, int &count, int kickoff);

  Score alphaBetaSearch(Board &board, int depth, int ply_count, Score alpha, Score beta,
                        std::atomic<bool> &stop, int &count, NodeType my_node_type,
                        bool is_save);

  Score zeroWindowSearch(Board &board, int depth, int ply_count, Score beta,
                         std::atomic<bool> &stop, int &count, NodeType my_node_type);

  MoveVector<256> generateMovesOrdered(Board &board, CMove hash_move, int ply_count,
                                       int &num_positive_moves);

} // namespace AI

#endif