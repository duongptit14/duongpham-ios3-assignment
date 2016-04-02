//
//  Queen.m
//  Chess
//
//  Created by Duong on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Queen.h"

@implementation Queen
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = CHESS_T_QUEEN;
    }
    return self;
}
-(void) isMoveVail:(NSMutableArray *)arrChess {
    NSLog(@"queen is me");
}
@end
