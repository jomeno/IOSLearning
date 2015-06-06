//
//  ViewController.h
//  TableViewDemo
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (copy, nonatomic)NSArray *myValues;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

