//
//  Alert.h
//  Assignment1
//
//  Created by Duong on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyRules <NSObject>

-(void) X;
-(void) test;

@end

@interface Alert : NSObject
@property id <MyRules> instance;
@end
