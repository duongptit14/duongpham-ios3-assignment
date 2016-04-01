//
//  ViewController.m
//  TestUIAertView
//
//  Created by Duong on 3/31/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.0f]];
    UIAlertView *myAlertView = [[UIAlertView alloc ] initWithTitle:@"Thong Bao" message:@"Thong bao thoi ma" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
    [myAlertView addButtonWithTitle:@"Button 2"];
    [myAlertView addButtonWithTitle:@"Button 3"];
    
    [myAlertView show];
    UIButton *launchDialog = [UIButton buttonWithType:UIButtonTypeCustom];
    [launchDialog setFrame:CGRectMake(10, 30, self.view.bounds.size.width-20, 50)];
    [launchDialog addTarget:self action:@selector(setAction) forControlEvents:UIControlEventTouchDown];
    [launchDialog setTitle:@"My Button" forState:UIControlStateNormal];
    [launchDialog setBackgroundColor:[UIColor whiteColor]];
    [launchDialog setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [launchDialog.layer setBorderWidth:0];
    [launchDialog.layer setCornerRadius:5];
    [self.view addSubview:launchDialog];
//    [myAlertView dismissWithClickedButtonIndex:2 animated:YES];
}
-(void) setAction {
    
    NSLog(@"an vao button");
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
//    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if(buttonIndex==3)
    {
        NSLog(@"Button 0 was selected.");
        NSLog(@"DuongPTIT14");
//        [alertView dismissWithClickedButtonIndex:1 animated:true];
    }
    else if(buttonIndex == 1)
    {
        NSLog(@"Button 1 was selected.");
        

    }
    else if(buttonIndex == 2)
    {
        NSLog(@"Button 2 was selected.");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
