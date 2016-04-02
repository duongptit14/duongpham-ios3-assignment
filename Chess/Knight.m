//
//  Knight.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Knight.h"

@implementation Knight
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_KNIGHT;
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"knight is me");
}
@end
