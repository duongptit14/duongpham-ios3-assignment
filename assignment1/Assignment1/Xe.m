//
//  Xe.m
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Xe.h"

@implementation Xe
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 1;
        self.positionY = 1;
    }
    return self;
}
-(void) move {
    self.positionY++;
    NSLog(@"Tao la XE, tao vua di chuyen\n");
}
-(void) eat {
    NSLog(@"Tao la XE, tao vua an m\n");
}
@end
