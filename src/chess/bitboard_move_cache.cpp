#include "game/chessboard.hpp"

const u64 KNIGHT_MOVE_CACHE[64] = {0x20400, 0x50800, 0xa1100, 0x142200, 0x284400, 0x508800, 0xa01000,
                                   0x402000, 0x2040004, 0x5080008, 0xa110011, 0x14220022, 0x28440044,
                                   0x50880088, 0xa0100010, 0x40200020, 0x204000402, 0x508000805, 0xa1100110a,
                                   0x1422002214, 0x2844004428, 0x5088008850, 0xa0100010a0, 0x4020002040,
                                   0x20400040200, 0x50800080500, 0xa1100110a00, 0x142200221400, 0x284400442800,
                                   0x508800885000, 0xa0100010a000, 0x402000204000, 0x2040004020000,
                                   0x5080008050000, 0xa1100110a0000, 0x14220022140000, 0x28440044280000,
                                   0x50880088500000, 0xa0100010a00000, 0x40200020400000, 0x204000402000000,
                                   0x508000805000000, 0xa1100110a000000, 0x1422002214000000, 0x2844004428000000,
                                   0x5088008850000000, 0xa0100010a0000000, 0x4020002040000000, 0x400040200000000,
                                   0x800080500000000, 0x1100110a00000000, 0x2200221400000000, 0x4400442800000000,
                                   0x8800885000000000, 0x100010a000000000, 0x2000204000000000, 0x4020000000000,
                                   0x8050000000000, 0x110a0000000000, 0x22140000000000, 0x44280000000000,
                                   0x88500000000000, 0x10a00000000000, 0x20400000000000};

const u64 KING_MOVE_CACHE[64] = {0x302, 0x705, 0xe0a, 0x1c14, 0x3828, 0x7050, 0xe0a0, 0xc040, 0x30203, 0x70507,
                                 0xe0a0e, 0x1c141c, 0x382838, 0x705070, 0xe0a0e0, 0xc040c0, 0x3020300, 0x7050700,
                                 0xe0a0e00, 0x1c141c00, 0x38283800, 0x70507000, 0xe0a0e000, 0xc040c000, 0x302030000,
                                 0x705070000, 0xe0a0e0000, 0x1c141c0000, 0x3828380000, 0x7050700000, 0xe0a0e00000,
                                 0xc040c00000, 0x30203000000, 0x70507000000, 0xe0a0e000000, 0x1c141c000000,
                                 0x382838000000, 0x705070000000, 0xe0a0e0000000, 0xc040c0000000, 0x3020300000000,
                                 0x7050700000000, 0xe0a0e00000000, 0x1c141c00000000, 0x38283800000000, 0x70507000000000,
                                 0xe0a0e000000000, 0xc040c000000000, 0x302030000000000, 0x705070000000000,
                                 0xe0a0e0000000000, 0x1c141c0000000000, 0x3828380000000000, 0x7050700000000000,
                                 0xe0a0e00000000000, 0xc040c00000000000, 0x203000000000000, 0x507000000000000,
                                 0xa0e000000000000, 0x141c000000000000, 0x2838000000000000, 0x5070000000000000,
                                 0xa0e0000000000000, 0x40c0000000000000};

const u64 PAWN_CAPTURE_CACHE[2][64] = {{0x200, 0x500, 0xa00, 0x1400, 0x2800, 0x5000, 0xa000, 0x4000,
                                        0x20000, 0x50000, 0xa0000, 0x140000, 0x280000, 0x500000, 0xa00000, 0x400000,
                                        0x2000000, 0x5000000, 0xa000000, 0x14000000, 0x28000000, 0x50000000, 0xa0000000, 0x40000000,
                                        0x200000000, 0x500000000, 0xa00000000, 0x1400000000, 0x2800000000, 0x5000000000, 0xa000000000,
                                        0x4000000000, 0x20000000000, 0x50000000000, 0xa0000000000, 0x140000000000, 0x280000000000,
                                        0x500000000000, 0xa00000000000, 0x400000000000, 0x2000000000000, 0x5000000000000, 0xa000000000000,
                                        0x14000000000000, 0x28000000000000, 0x50000000000000, 0xa0000000000000, 0x40000000000000,
                                        0x200000000000000, 0x500000000000000, 0xa00000000000000, 0x1400000000000000, 0x2800000000000000,
                                        0x5000000000000000, 0xa000000000000000, 0x4000000000000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                       {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x5, 0xa, 0x14, 0x28, 0x50, 0xa0, 0x40, 0x200, 0x500,
                                        0xa00, 0x1400, 0x2800, 0x5000, 0xa000, 0x4000, 0x20000, 0x50000, 0xa0000, 0x140000, 0x280000,
                                        0x500000, 0xa00000, 0x400000, 0x2000000, 0x5000000, 0xa000000, 0x14000000, 0x28000000, 0x50000000,
                                        0xa0000000, 0x40000000, 0x200000000, 0x500000000, 0xa00000000, 0x1400000000, 0x2800000000,
                                        0x5000000000, 0xa000000000, 0x4000000000, 0x20000000000, 0x50000000000, 0xa0000000000,
                                        0x140000000000, 0x280000000000, 0x500000000000, 0xa00000000000, 0x400000000000, 0x2000000000000,
                                        0x5000000000000, 0xa000000000000, 0x14000000000000, 0x28000000000000, 0x50000000000000,
                                        0xa0000000000000, 0x40000000000000}};

const u64 PAWN_MOVE_CACHE[2][64] = {{0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000, 0x4000, 0x8000, 0x10000,
                                     0x20000, 0x40000, 0x80000, 0x100000, 0x200000, 0x400000, 0x800000, 0x1000000, 0x2000000,
                                     0x4000000, 0x8000000, 0x10000000, 0x20000000, 0x40000000, 0x80000000, 0x100000000,
                                     0x200000000, 0x400000000, 0x800000000, 0x1000000000, 0x2000000000, 0x4000000000,
                                     0x8000000000, 0x10000000000, 0x20000000000, 0x40000000000, 0x80000000000, 0x100000000000,
                                     0x200000000000, 0x400000000000, 0x800000000000, 0x1000000000000, 0x2000000000000,
                                     0x4000000000000, 0x8000000000000, 0x10000000000000, 0x20000000000000, 0x40000000000000,
                                     0x80000000000000, 0x100000000000000, 0x200000000000000, 0x400000000000000, 0x800000000000000,
                                     0x1000000000000000, 0x2000000000000000, 0x4000000000000000, 0x8000000000000000,
                                     0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                    {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80,
                                     0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000, 0x4000, 0x8000, 0x10000, 0x20000, 0x40000,
                                     0x80000, 0x100000, 0x200000, 0x400000, 0x800000, 0x1000000, 0x2000000, 0x4000000,
                                     0x8000000, 0x10000000, 0x20000000, 0x40000000, 0x80000000, 0x100000000, 0x200000000,
                                     0x400000000, 0x800000000, 0x1000000000, 0x2000000000, 0x4000000000, 0x8000000000,
                                     0x10000000000, 0x20000000000, 0x40000000000, 0x80000000000, 0x100000000000,
                                     0x200000000000, 0x400000000000, 0x800000000000, 0x1000000000000, 0x2000000000000,
                                     0x4000000000000, 0x8000000000000, 0x10000000000000, 0x20000000000000, 0x40000000000000,
                                     0x80000000000000}};

const u64 PAWN_DOUBLE_CACHE[2][64] = {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x1000000, 0x2000000, 0x4000000, 0x8000000, 0x10000000, 0x20000000,
                                       0x40000000, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                      {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x100000000,
                                       0x200000000, 0x400000000, 0x800000000, 0x1000000000, 0x2000000000,
                                       0x4000000000, 0x8000000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}};

void move_cache::init()
{
  //might be not needed
}

u64 move_cache::pawnCaptures(Square piece_location, Color color, u64 occupants)
{
  return PAWN_CAPTURE_CACHE[color][piece_location] | occupants;
}

u64 move_cache::pawnCaptures(u64 piece_location, Color color, u64 occupants)
{
  return move_cache::pawnCaptures(u64ToSquare(piece_location), color, occupants);
}

u64 move_cache::pawnDoubleMoves(Square piece_location, Color color, u64 occupants)
{
  return PAWN_DOUBLE_CACHE[color][piece_location] & ~occupants;
}

u64 move_cache::pawnDoubleMoves(u64 piece_location, Color color, u64 occupants)
{
  return move_cache::pawnCaptures(u64ToSquare(piece_location), color, occupants);
}

u64 move_cache::pawnMoves(Square piece_location, Color color, u64 occupants)
{
  return PAWN_MOVE_CACHE[color][piece_location] & ~occupants;
}

u64 move_cache::pawnMoves(u64 piece_location, Color color, u64 occupants)
{
  return move_cache::pawnCaptures(u64ToSquare(piece_location), color, occupants);
}

u64 move_cache::knightMoves(Square piece_location, u64 occupants)
{
  return KNIGHT_MOVE_CACHE[piece_location] | occupants;
}

u64 move_cache::knightMoves(u64 piece_location, u64 occupants)
{
  return move_cache::knightMoves(u64ToSquare(piece_location), occupants);
}

u64 move_cache::kingMoves(Square piece_location, u64 occupants)
{
  return KING_MOVE_CACHE[piece_location] | occupants;
}

u64 move_cache::kingMoves(u64 piece_location, u64 occupants)
{
  return move_cache::knightMoves(u64ToSquare(piece_location), occupants);
}

u64 move_cache::bishopMoves(u64 piece_location, u64 occupants)
{
  return move_cache::bishopMoves(u64ToSquare(piece_location), occupants);
}

u64 move_cache::bishopMoves(Square piece_location, u64 occupants)
{
  return 0;
}

u64 move_cache::rookMoves(u64 piece_location, u64 occupants)
{
  return move_cache::rookMoves(u64ToSquare(piece_location), occupants);
}

u64 move_cache::rookMoves(Square piece_location, u64 occupants)
{
  return 0;
}
