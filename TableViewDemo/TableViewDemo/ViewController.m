//
//  ViewController.m
//  TableViewDemo
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myValues;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myValues=[NSArray arrayWithObjects:@"Monday",@"Tuesday",@"Wednessday",@"Thursday", nil];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [myValues count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
NSString *simpleTableIndentifier = @"";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIndentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIndentifier];
    }
    
    cell.textLabel.text = myValues[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"fire"];
    return cell;
}

@end
