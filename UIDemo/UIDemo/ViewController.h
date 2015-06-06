//
//  ViewController.h
//  UIDemo
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)Slider:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;
@property (weak, nonatomic) IBOutlet UILabel *myTextAlpha;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segChoose;
- (IBAction)segChoose:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UILabel *segLabel;
- (IBAction)getAlert:(UIButton *)sender;
- (IBAction)myButton:(UIButton *)sender;

@end

