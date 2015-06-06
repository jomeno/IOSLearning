//
//  ViewController.m
//  MultiView
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"
#import "SecondController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTxtFld;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchView:(UIButton *)sender {
    //SecondController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
    //[self presentViewController:svc animated:YES completion:nil];
}

- (IBAction)switchView2:(UIButton *)sender {
    SecondController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
    
    svc.firstname = nameTxtFld.text;
    [self presentViewController:svc animated:YES completion:nil];
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondController *svc = [segue destinationViewController];
    svc.firstname = nameTxtFld.text;
}

@end
