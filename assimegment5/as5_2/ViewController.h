//
//  ViewController.h
//  as5_2
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource , UITableViewDelegate > 
@property NSMutableArray *jsonData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

