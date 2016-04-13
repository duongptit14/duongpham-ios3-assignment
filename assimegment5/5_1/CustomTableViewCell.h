//
//  CustomTableViewCell.h
//  as5_1
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)btnClicked:(id)sender;

@end
