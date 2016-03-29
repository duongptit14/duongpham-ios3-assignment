//
//  Alert.m
//  Assignment1
//
//  Created by Duong on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Alert.h"

@implementation Alert
- (instancetype)init
{
    self = [super init];
    if (self) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (self.instance != nil) {
                [self.instance X];
            }
        });

    }
    return self;
}
@end
