//
//  Game.h
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Queen.h"
#import "Rook.h"
#import "King.h"
#import "Knight.h"
#import "Pawn.h"
#import "Bishop.h"
@interface Game : NSObject
@property Player *whitePlayer;
@property Player *blackPlayer;
@property NSMutableArray *arrWhiteChess;
@property NSMutableArray *arrBlackChess;
-(BOOL) checkKill;
-(BOOL) isGameOver;
@end
