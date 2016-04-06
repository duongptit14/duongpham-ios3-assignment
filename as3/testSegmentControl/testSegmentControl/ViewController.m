//
//  ViewController.m
//  testSegmentControl
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
    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 435)];
    self.scroll.contentSize = CGSizeMake(320, 700);
    _scroll.showsHorizontalScrollIndicator = YES;
    NSArray *itemArray = [NSArray arrayWithObjects: @"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven",nil];
    self.segment = [[UISegmentedControl alloc] initWithItems:itemArray ];
    self.segment.frame = CGRectMake(10, 50, 300, 25);
//    self.segment.segmentedControlStyle  = UISegmentedControlStylePlain;
    [self.segment addTarget:self action:@selector(MySegmentControlAction:) forControlEvents:UIControlEventValueChanged ];
    [self.view addSubview:self.segment ];
}
- (void)MySegmentControlAction:(UISegmentedControl *)segment
{
    if(segment.selectedSegmentIndex == 0)
    {
        NSLog(@"selected index One");
    }
    else if (segment.selectedSegmentIndex == 1 ) {
        NSLog(@"selected index Two");
    }
    else if (segment.selectedSegmentIndex == 2 ) {
        NSLog(@"selected index Three");
    }
    else if (segment.selectedSegmentIndex == 3 ) {
        NSLog(@"selected index Four");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
