//
//  ViewController.m
//  testUIPickerView
//
//  Created by Duong on 4/4/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *_myData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self._myPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 540)];
    self._myData = [[NSArray alloc] initWithObjects:@"Mot", @"hai", @"Ba",@"Bon", @"Nam", nil ];
    self._myPickerView.delegate = self;
    self._myPickerView.dataSource = self;
    self._myPickerView.showsSelectionIndicator = YES;
    [self.view addSubview:self._myPickerView];
    NSLog(@"test");
}
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    return 4;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component; {
    return 4;
}
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //return self._myData[row];
    NSString *title;
    title = [NSString stringWithFormat:@"%ld", (long)row];
    return title;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component  {
    NSString *str;
    str = [NSString stringWithFormat:@"%ld",(long)row];
    NSLog(@"%@",str);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
