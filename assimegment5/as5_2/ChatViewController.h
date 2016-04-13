//
//  ChatViewController.h
//  as5_2
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController <UITableViewDelegate , UITableViewDataSource >
@property (weak, nonatomic) IBOutlet UITableView *chatView;
@property NSMutableDictionary *dic;
@end
