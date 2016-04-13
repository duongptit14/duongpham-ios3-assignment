//
//  ChatViewController.m
//  as5_2
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.chatView.delegate = self;
    self.chatView.dataSource = self;
    
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSMutableArray *arr = self.dic[@"transcript"];
    return arr.count;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    NSMutableArray *arr = self.dic[@"transcript"];
    NSMutableDictionary *dict = arr[indexPath.row];
    if( dict[@"alias"] == nil || [@"" isEqualToString:dict[@"alias"]]) {
        cell = [self.chatView dequeueReusableCellWithIdentifier:@"cellLeft" forIndexPath:indexPath ];
    }
    else  {
        cell = [self.chatView dequeueReusableCellWithIdentifier:@"cellRight" forIndexPath:indexPath ];
    }
    UILabel *lbl = [cell.contentView viewWithTag:101 ];
    lbl.text = dict[@"message"];
    [lbl sizeToFit ];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
