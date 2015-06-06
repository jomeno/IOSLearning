//
//  StreamImageViewController.m
//  WebserviceDemo
//
//  Created by iAmJavaDemon on 6/6/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "StreamImageViewController.h"

@interface StreamImageViewController ()

@end

@implementation StreamImageViewController
@synthesize imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"http://prashantranjan.com/images/flower1.png"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    imageView.image = [[UIImage alloc]initWithData:data];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
