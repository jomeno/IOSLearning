//
//  ViewController.h
//  HelloWorldIPhone
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)changeText:(UIButton *)sender;
@end

