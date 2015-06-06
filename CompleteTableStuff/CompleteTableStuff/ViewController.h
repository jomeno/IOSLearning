//
//  ViewController.h
//  CompleteTableStuff
//
//  Created by iAmJavaDemon on 6/5/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property(copy, nonatomic)NSArray *myDemoList;


@end

