//
//  Vua.m
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Vua.h"

@implementation Vua
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 4;
        self.positionY = 1;
    }
    return self;
}
-(void) move {
    self.positionY++;
    NSLog(@"Tao la VUA, tao vua di chuyen\n");
}
-(void) eat {
    NSLog(@"Tao la VUA, tao vua an m\n");
}
@end
