#ifndef BOARDDATA_STRUCTURES_HPP
#define BOARDDATA_STRUCTURES_HPP

// This file contains data structures pertaining to the Board class
// ie, legal move generation and move history

#include <array>
#include <vector>
#include "game/cmove.hpp"
#include "game/pieces.hpp"

enum GameStatus
{
  WhiteWin,
  BlackWin,
  Draw,
  Playing,
  Stalemate,
  NotCalculated
};

namespace castle
{
  extern int long_;
  extern int short_;

  namespace white
  {
    extern int long_;
    extern int short_;
  } // namespace white

  namespace black
  {
    extern int long_;
    extern int short_;
  } // namespace black

  class Rights
  {
  private:
    int data_[4];

  public:
    Rights();

    Rights(int w_long, int w_short, int b_long, int b_short);

    int get(Color color, int direction) const;
    int get(int r_id) const;

    void SetTrue(Color color, int direction);
    void SetFalse(Color color, int direction);
    void SetTrue(int r_id);
    void SetFalse(int r_id);
  };

} // namespace castle

// Cached state elements of a board
// This is the stuff that isn't incrementally updated on unmake
// Castling is, for a particular direction (short or long),
// has that player not castled or not moved the king and not moved the respective rook
struct BoardState
{
  int move_count;
  int ply;
  int halfmove_counter;  // plies since last capture or pawn move
  int en_passant_square; // square behind the pawn, or -1
  int is_check;          // is the position a check
  int has_repeated;      // three-fold repetition
  Color turn;
  PieceType last_moved;    // I think this is the piece type that last moved
  PieceType last_captured; // might be a piece type
  u64 hash;                // the zobrist hash, saved for threefold testing
  CMove mv;                // the last move
  castle::Rights castling_rights;

  // default constructor
  BoardState()
  {
    this->move_count = 0;
    this->ply = 0;
    this->halfmove_counter = 0;
    this->en_passant_square = -1;
    this->is_check = 0;
    this->has_repeated = 0;
    this->turn = White;
    this->last_moved = piece::EmptyPiece;
    this->last_captured = piece::EmptyPiece;
    this->mv = CMove::NullMove();
    this->hash = 0;
  }

  //psuedoLegal?????
};

// stack implemented with a std::vector
class BoardStateStack
{
private:
  int index; // length of stack
  std::vector<BoardState> data_;

public:
  BoardStateStack() { index = 0; }

  // peek at back
  BoardState &peek()
  {
    assert(index > 0);
    return data_.back();
  }

  // peek at index
  BoardState &peek_at(int i)
  {
    assert(i > 0 && i < index);
    return data_[i];
  }

  bool can_pop() { return index > 0; }

  int getindex() { return index; };

  void Pop()
  {
    assert(index > 0);
    data_.pop_back();
    index--;
  }

  void Clear()
  {
    index = 0;
    data_.clear();
  }

  // Should deference and push copy to stack
  void Push(BoardState &state)
  {
    data_.push_back(state);
    index++;
  };
};

// Mutable list of moves with limited size
// N=256 is probably fine 100% of use cases
template <int N>
struct MoveVector
{
  CMove data_[N];
  int size_;

  // default constructor
  MoveVector() { size_ = 0; }

  // sets head pointer to 0
  void Clear() { size_ = 0; }

  void PushBack(CMove mv)
  {
    data_[size_] = mv;
    size_++;
  }

  void Erase(int index)
  {
    // shift items down
    memmove(data_ + index, data_ + index + 1, (N - index - 1) * sizeof(CMove));
    size_--;
  }

  void Insert(int index, CMove mv)
  {
    // shift items up
    memmove(data_ + index + 1, data_ + index, (N - index - 1) * sizeof(CMove));
    data_[index] = mv;
    size_++;
  }

  CMove back()
  {
    assert(size_ > 0);
    return data_[size_ - 1];
  }

  CMove pop_back()
  {
    assert(size_ > 0);
    CMove mv = back();
    size_--;
    return mv;
  }

  int size() { return size_; }
  int begin() { return 0; };
  bool is_empty() { return size_ == 0; }

  CMove operator[](int index) { return data_[index]; }
};

#endif
