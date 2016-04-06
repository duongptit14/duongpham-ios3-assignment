//
//  ViewController.m
//  Final
//
//  Created by Duong on 4/5/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arr = [[NSMutableArray alloc] initWithObjects:@"One", @"Two", @"Three",@"Four", @"Five", @"Six", nil ];
    self.mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(20, 20, 20, 20) ];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain ];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.tableView ];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section; {
    return 3;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 10;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"];
    }
    
//    cell.textLabel.text=[self.arr objectAtIndex:indexPath.row];
//    [cell.contentView  addSubview:self.mySwitch ];
    
//    UISwitch *switchview = [[UISwitch alloc] initWithFrame:];
//    cell.accessoryView = switchview;
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero ];
    CGRect buttonRect = CGRectMake(210, 25, 65, 25);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Action" forState:UIControlStateNormal];
    button.frame = buttonRect;
    if( indexPath.row == 0 ) {
        cell.imageView.image = [UIImage imageNamed:@"bb87.jpg"];
    }
    else if( indexPath.row == 1 ) {
        cell.textLabel.text = @"The Avengers";
    }
    else [cell.contentView addSubview:button ];
    return cell;
}
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"selected %ld row", (long)indexPath.row);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
