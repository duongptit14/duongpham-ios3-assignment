//
//  Pawn.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Pawn.h"

@implementation Pawn
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_PAWN;
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"pawn is mind");
}
@end
