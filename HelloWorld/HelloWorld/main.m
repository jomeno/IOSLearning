//
//  main.m
//  HelloWorld
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //Creating class
        MyClass *c1 = [[MyClass alloc]init];
        [c1 sum];
        //[c1 sum:10];
        //[c1 sum:20 and:30];
    }
    return 0;
}
