//
//  ViewController.m
//  CalculatorIPhone
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize operand1;
@synthesize operand2;
@synthesize result;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sum:(UIButton *)sender {
    NSString *resultv=[NSString stringWithFormat:@"%i", operand1.text.intValue+operand2.text.intValue];
    
    //[sender setTitle:resultv forState:UIControlStateNormal];
    result.text =resultv;
}
- (IBAction)closeKeypad:(UIButton *)sender {
    [operand1 resignFirstResponder];
}

- (IBAction)goneKeypad:(id)sender {
    [operand1 resignFirstResponder];
}
@end
