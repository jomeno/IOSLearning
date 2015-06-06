//
//  Solve.m
//  Calculator
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "Solve.h"

@implementation Solve
@synthesize msg;
@synthesize a;
-(int)sum:(int)a and: (int)b{
    return (a+b);
}
-(void)diff:(int)a and: (int)b{
    NSLog(@"Diff is %i", (a-b));
}
@end
