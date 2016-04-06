//
//  ViewController.m
//  testSwitch
//
//  Created by Duong on 4/5/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 50, 100, 50) ];
    [self.mySwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.mySwitch ];
}
-(void) switchChanged :(UISwitch *) Switch{
    if(Switch.enabled) {
        NSLog(@"nut da duoc bat");
    }
}
- (void)setOn:(BOOL)on animated:(BOOL)animated; {
    NSLog(@"on on on on on on");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
