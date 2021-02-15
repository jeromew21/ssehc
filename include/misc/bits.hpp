#ifndef BITS_HPP
#define BITS_HPP

#include <array>
#include "misc/definitions.hpp"

void seedRand(int seed); // seed rng
void timeSeedRand();     //seed w/ time
float randReal();        // between 0 and 1

int hadd(u64 x); // count number of bits, also a hotspot IIRC

void bitscanAll(u64 x, std::array<u64, 64> &out_arr, int &out_size); // breaks into one-hots, hotspot, vectorize?

// LSB (rightmost, uppermost)
inline int bitscanForward(u64 x) { return __builtin_ffsll(x) - 1; }

// MSB (leftmost, uppermost)
inline int bitscanReverse(u64 x) { return 63 - __builtin_clzll(x); }

// One-hot <=> int
// Needs to be converted to 64 bit if shifting
// 32 is too small and overflows.
inline u64 u64FromSquare(Square s) { return (u64)1 << s; }
inline Square u64ToSquare(u64 x) { return bitscanForward(x); }

inline Row u64ToRow(u64 x) { return bitscanForward(x) / 8; }
inline Col u64ToCol(u64 x) { return bitscanForward(x) % 8; }
inline Row squareToRow(Square s) { return s / 8; }
inline Col squareToCol(Square s) { return s % 8; }

inline u64 u64FromPair(Row r, Col c) { return u64FromSquare(r * 8 + c); }
inline Square squareFromPair(Row r, Col c) { return r * 8 + c; }

#endif