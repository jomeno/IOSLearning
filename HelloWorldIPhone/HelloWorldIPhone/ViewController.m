
//
//  ViewController.m
//  HelloWorldIPhone
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeText:(UIButton *)sender {
    NSString *msg = @"Calling from string";
    myLabel.text = msg;
}
@end
