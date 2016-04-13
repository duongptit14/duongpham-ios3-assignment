//
//  ViewController.m
//  as5
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.img.image = [UIImage imageNamed:@"1.jpg"];
    self.img.contentMode = UIViewContentModeScaleAspectFill;
    _img.layer.cornerRadius = _img.frame.size.height/2;
    _img.layer.borderWidth = 5.0f;
    _img.layer.borderColor = [UIColor redColor].CGColor;
    _img.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
