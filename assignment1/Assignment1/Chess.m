//
//  Chess.m
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Chess.h"

@implementation Chess
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 1;
        self.positionY = 1;
    }
    return self;
}
-(void) eat {
    NSLog(@"Chess eat....");
}
-(void) move {
    NSLog(@"Chess di chuyen roi");
}
@end
