//
//  Chess.h
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chess : NSObject
@property int positionX;
@property int positionY;
-(void) move;
-(void) eat;
@end

