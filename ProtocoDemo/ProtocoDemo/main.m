//
//  main.m
//  ProtocoDemo
//
//  Created by iAmJavaDemon on 6/4/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClassA.h"
#import "MyClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MyClassA *myClassA = [[MyClassA alloc]init];
        [myClassA show];
        MyClassB *myClassB = [[MyClassB alloc]init];
        [myClassB show];
    }
    return 0;
}
