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
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    //creating second thread
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //statement
        NSURL *url = [NSURL URLWithString:@"http://prashantranjan.com/images/flower1.png"];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            //what to update on foreground processing
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
            imageView.image = [[UIImage alloc]initWithData:data];
        });
        
    });
    
    
    
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
