#ifndef AIDATASTRUCTURES_HPP
#define AIDATASTRUCTURES_HPP

#include "game/cmove.hpp"
#include "misc/definitions.hpp"
#include "ai/ai.hpp"
/**
 * A tuple that contains a move and a corresponding score.
 */
struct MoveScoreTuple
{
  CMove mv;
  Score score;
  MoveScoreTuple(CMove mv0, Score score0) : mv(mv0), score(score0) {}
  bool operator<(const MoveScoreTuple other) const { return (score < other.score); }
};

struct TableNode
{
  u64 hash;
  int8_t depth;
  NodeType nodeType;
  Move bestMove;

  TableNode(Board &board, int d, NodeType typ)
  {
    hash = board.zobrist();
    depth = d;
    nodeType = typ;
    bestMove = Move::NullMove();
  }

  bool operator==(const TableNode &other) const { return (hash == other.hash); }

  TableNode() { hash = 0; }
};

//for variations?
struct TableBucket
{
  TableNode node;
  Score score;

  TableBucket() {}
};

template <int N>
class TranspositionTable
{
  TableBucket _arr[N];
  size_t members;

public:
  TranspositionTable() { members = 0; }

  int ppm() { return ((double)members / (double)N) * 1000.0; }

  TableBucket *find(TableNode &node)
  {
    u64 hashval = node.hash;
    int bucketIndex = hashval % N;
    TableBucket *bucket = _arr + bucketIndex;
    if (bucket->node == node)
      return bucket;
    else
      return NULL;
  }

  TableBucket *end() { return NULL; }

  void insert(TableNode &node, Score score)
  {
    u64 hashval = node.hash;
    int bucketIndex = hashval % N;
    TableBucket *bucket = _arr + bucketIndex;
    if (bucket->node.hash == 0) //nicer way to check for empty spot?
      members += 1;
    //store importance?
    if (node.hash == bucket->node.hash && node.depth < bucket->node.depth) //same position
      return;
    bucket->node = node;
    bucket->score = score;
  }
};

struct MiniTableBucket
{
  u64 hash; // position hash
  //int depth; // number of plies to root saved
  int8_t depth;
  std::array<Move, 64> seq;
};

template <int N>
class MiniTable
{
  MiniTableBucket _arr[N];
  int members;

public:
  MiniTable()
  {
    members = 0;
  }

  MiniTableBucket *find(u64 hashval)
  {
    int bucketIndex = hashval % N;
    MiniTableBucket *bucket = _arr + bucketIndex;
    if (hashval == bucket->hash)
      return bucket;
    else
      return NULL;
  }

  int ppm() { return ((double)members / (double)N) * 1000.0; }

  MiniTableBucket *end() { return NULL; }

  void clear()
  {
    for (size_t i = 0; i < N; i++)
      _arr[i].hash = 0;
  }

  //can we pass by reference instead?
  void insert(u64 hashval, int depth, std::array<Move, 64> *moveseq)
  {
    int bucketIndex = hashval % N;
    MiniTableBucket *bucket = _arr + bucketIndex;
    if (bucket->hash == 0)
      members += 1;
    bucket->hash = hashval;
    bucket->seq = *moveseq; //pass by reference instead?
    bucket->depth = depth;
  }
};

#endif