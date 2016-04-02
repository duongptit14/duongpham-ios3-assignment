//
//  Rook.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Rook.h"

@implementation Rook
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_ROOK;
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"rook is me");
}
@end
