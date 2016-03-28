//
//  Tot.m
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Tot.h"

@implementation Tot
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.positionX = 1;
        self.positionY = 2;
    }
    return self;
}
-(void) move {
    self.positionY++;
    NSLog(@"Tao la TOT, tao vua di chuyen\n");
}
-(void) eat {
    NSLog(@"Tao la TOT, tao an m\n");
}
@end
