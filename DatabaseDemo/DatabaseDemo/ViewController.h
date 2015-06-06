//
//  ViewController.h
//  DatabaseDemo
//
//  Created by iAmJavaDemon on 6/5/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface ViewController : UIViewController
@property (strong, nonatomic)NSString *databasePath;
@property (nonatomic)sqlite3 *conctDB;
@property (weak, nonatomic) IBOutlet UITextField *myInput;
- (IBAction)saveData:(UIButton *)sender;
- (IBAction)viewData:(UIButton *)sender;

@end

