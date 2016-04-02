//
//  Piece.h
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    CHESS_T_KING = 1,
    CHESS_T_QUEEN = 2,
    CHESS_T_KNIGHT = 3,
    CHESS_T_BISHOP = 4,
    CHESS_T_ROOK = 5,
    CHESS_T_PAWN = 6,
} CHESS_TYPE;
typedef enum {
    CHESS_C_WHITE = 0,
    CHESS_C_BLACK = 1
} CHESS_COLOR;
@interface Piece : NSObject

@property CHESS_TYPE type;
@property CHESS_COLOR color; // 0 = white and 1 = black
@property int x; // toa do x
@property int y; // toa do y
-(void) isMoveVail : (NSMutableArray *) arrChess;
@end
