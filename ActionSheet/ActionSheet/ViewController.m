//
//  ViewController.m
//  ActionSheet
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"
#import "MYview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MYview *mV=[[MYview alloc]init];
    [self.view addSubview:mV];
    // Do any additional setup after loading the view, typically from a nib.
    /*UIButton *mButton = [[UIButton alloc]initWithFrame:CGRectMake(20,20,120,30)];
    [mButton setTitle:@"Click Me" forState:UIControlStateNormal];
    [mButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [mButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [mButton setBackgroundColor:[UIColor redColor]];
    
    // round border corner
    mButton.clipsToBounds = YES;
    mButton.layer.cornerRadius = 15;
    
    // adding event handler
    [mButton addTarget:self action:@selector(clickMe) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:mButton];*/
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 30, 120, 120)];
    [imgView setImage:[UIImage imageNamed:@"blue"]];
    
    // making animation
    imgView.animationImages = [NSArray arrayWithObjects:
                               [UIImage imageNamed:@"red"],
                               [UIImage imageNamed:@"blue"], nil];
    // set duration
    imgView.animationDuration = 1.0;
    // invoke animation
    [imgView startAnimating];
    
    [self.view addSubview:imgView];
    
    
}
-(void)clickMe{
    NSLog(@"Click Me");
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Instruction" message:@"Success" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NormalDialog:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Normal Dialog" message:@"Success" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)ActionSheet:(UIButton *)sender {
    UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"My Action Sheet" delegate:self cancelButtonTitle:@"Ok" destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Yes O!",nil];
    
    [actionSheet addButtonWithTitle:@"No o"];
    // show in view of actionsheet
    [actionSheet showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch(buttonIndex){
        case 0:
            NSLog(@"Cancel Clicked");
            break;
        case 1:
            NSLog(@"Ok clicked");
            break;
        default:
            break;
    }

}




@end
