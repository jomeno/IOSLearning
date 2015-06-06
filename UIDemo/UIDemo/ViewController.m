//
//  ViewController.m
//  UIDemo
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    BOOL isselectd;
}
@synthesize sliderValue;
@synthesize segChoose;
@synthesize segLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Slider:(UISlider *)sender {
    float progress = sender.value;
    NSString *myRecValue = [NSString stringWithFormat:@"%f", progress];
    sliderValue.text = myRecValue;
    self.myTextAlpha.alpha = progress;
    
}


- (IBAction)segChoose:(UISegmentedControl *)sender {
    NSInteger segIndex = sender.selectedSegmentIndex;
    switch(segIndex){
        case 0:
            segLabel.text = @"First seg choosen";
            break;
        case 1:
            segLabel.text = @"First seg choosen";
            break;
        case 2:
            segLabel.text = @"First seg choosen";
            break;
        case 3:
            segLabel.text = @"First seg choosen";
            break;
    
    }
}
- (IBAction)getAlert:(UIButton *)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"My Alert Box" message:@"Successs" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil ];
    [alert show];
}

- (IBAction)myButton:(UIButton *)sender {
    if(isselectd == false){
        [sender setSelected:true];
        isselectd=true;
    }else{
        [sender setSelected:false];
        isselectd = false;
    }
}
@end
