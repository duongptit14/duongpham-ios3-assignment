//
//  ViewController.m
//  as5_1
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
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell;
   NSArray *arr= [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil ];
   // cell = self.tableViewCcell;
    if(indexPath.row %2 ==0) {
    cell = [arr objectAtIndex:0];
    } else cell =[arr objectAtIndex:1];
    return cell;;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
