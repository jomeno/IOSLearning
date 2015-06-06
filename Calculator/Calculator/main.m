//
//  main.m
//  Calculator
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solve.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Creating class
        Solve *c1 = [[Solve alloc]init];
        NSLog(@"%i",[c1 sum: 10 and:10]);
    }
    return 0;
}
