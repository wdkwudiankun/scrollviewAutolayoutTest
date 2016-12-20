//
//  TableViewController.m
//  scrollviewTest
//
//  Created by huangqibiao on 2016/12/20.
//  Copyright © 2016年 huangqibiao. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property (nonatomic, copy) NSArray *arr;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _arr = @[@"ViewController", @"ViewController1", @"ViewController2", @"ViewController3", @"ViewController4"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"reuseIdentifier"];
    }
    
    // Configure the cell...
    cell.textLabel.text = _arr[indexPath.row];
    
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    Class className = NSClassFromString(cell.textLabel.text);
    [self.navigationController pushViewController:[className new] animated:YES];
}



@end
