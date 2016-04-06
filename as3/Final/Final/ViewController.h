//
//  ViewController.h
//  Final
//
//  Created by Duong on 4/5/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate , UITableViewDataSource >
@property UITableView *tableView;
@property NSMutableArray *arr;
@property UISwitch *mySwitch;
@end

