//
//  Game.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Game.h"

@implementation Game
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.whitePlayer = [[Player alloc] init ];
        self.blackPlayer = [[Player alloc] init ];
//        self.whitePlayer.name = @"Barcelona";
//        self.whitePlayer.numberOfTurn = 0;
//        self.whitePlayer.name = @"RealMandrid";
//        self.whitePlayer.numberOfTurn = 0;
        self.arrBlackChess = [[NSMutableArray alloc] init ];
        self.arrWhiteChess = [[NSMutableArray alloc] init ];
        for( int i = 0; i<8; i++ ) {
            Pawn *pawn = [[Pawn alloc] init ];
            [self.arrWhiteChess addObject:pawn];
        }
        for( int i = 0; i<2; i++ ) {
            Knight *knight = [[Knight alloc] init ];
            [self.arrWhiteChess addObject:knight];
        }
        for( int i = 0; i<2; i++ ) {
            Bishop *bishop = [[Bishop alloc] init ];
            [self.arrWhiteChess addObject:bishop];
        }
        for( int i = 0; i<2; i++ ) {
            Rook *rook = [[Rook alloc] init ];
            [self.arrWhiteChess addObject:rook];
        }
    }
    return self;
}
-(BOOL) checkKill; {
    return true;
}
-(BOOL) isGameOver; {
    return true;
}
@end
