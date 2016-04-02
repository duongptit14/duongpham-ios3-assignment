//
//  King.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "King.h"

@implementation King
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_KING;
        
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"I'm a King of Kings");
}
@end
