//
//  ViewController.h
//  CalculatorIPhone
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)sum:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *operand1;
@property (weak, nonatomic) IBOutlet UITextField *operand2;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)closeKeypad:(UIButton *)sender;
- (IBAction)goneKeypad:(id)sender;

@end

