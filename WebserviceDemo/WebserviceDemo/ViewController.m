//
//  ViewController.m
//  WebserviceDemo
//
//  Created by iAmJavaDemon on 6/6/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // change url from string
    NSURL *myURL = [NSURL URLWithString:@"http://www.prashantranjan.com/services.php"];
    //load the url
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    
    //invoke url
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSLog(@"RESPONSE : %@", response);
        NSLog(@"DATA : %@", data);
        NSLog(@"ERROR : %@", connectionError);
        
        NSArray *myCompleteArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSLog(@"DATA : %@", myCompleteArray);
        
        //load data in to string
        for (NSDictionary *myDict in myCompleteArray) {
            NSString *myInfo = [myDict objectForKey:@"name"];
            NSLog(@"Name : %@", myInfo);
        }
        
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
