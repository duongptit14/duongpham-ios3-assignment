//
//  Bishop.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Bishop.h"

@implementation Bishop
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_BISHOP;
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"bishop is me");
}
@end
