//
//  ViewController.m
//  as5_2
//
//  Created by Duong on 4/13/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"" ];
    NSError *erro;
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    self.jsonData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&erro];
    
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.jsonData.count;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath ];
    NSMutableDictionary *dict = [self.jsonData objectAtIndex:indexPath.row];
    UILabel *lbl = [cell.contentView viewWithTag:2 ];
    lbl.text = dict[@"description"];
    NSLog(@"%@", lbl.text);
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatViewController *chatVCl = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ChatViewController" ];
    NSMutableDictionary *dic = self.jsonData[indexPath.row];
    chatVCl.dic = dic;
    [self.navigationController pushViewController:chatVCl animated:YES ];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
