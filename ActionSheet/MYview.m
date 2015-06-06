//
//  MYview.m
//  ActionSheet
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "MYview.h"

@implementation MYview


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIButton *mButton = [[UIButton alloc]initWithFrame:CGRectMake(20,20,120,30)];
    [mButton setTitle:@"Click Me" forState:UIControlStateNormal];
    [mButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [mButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [mButton setBackgroundColor:[UIColor redColor]];
    
    [self addSubview:mButton];
}


@end
