//
//  ViewController.m
//  Assignment1
//
//  Created by Duong on 3/28/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "Vua.h"
#import "Xe.h"
#import "Tot.h"
#import "Alert.h"
@interface ViewController ()

@end

@implementation ViewController
-(void) X {
    NSLog(@"Bat duoc roi");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    Vua *vua = [[Vua alloc] init ];
    Tot *tot = [[Tot alloc] init ];
    Xe *xe = [[Xe alloc] init ];
    [vua move];
    [tot eat];
    [xe move];
    Alert *alert = [[Alert alloc] init ];
    alert.instance = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
