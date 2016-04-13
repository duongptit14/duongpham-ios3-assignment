//
//  ViewController.h
//  as5_1
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
@interface ViewController : UIViewController <UITableViewDelegate , UITableViewDataSource >
//@property (strong, nonatomic) IBOutlet CustomTableViewCell *tableViewCcell;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

