//
//  MyClass.m
//  HelloWorld
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass
-(void)sum{
    NSLog(@"This is is called from class A");
}
-(void)sum:(int)a{
    NSLog(@"This is is called from class A");
}
-(void)sum:(int)a and:(int)b{
    NSLog(@"This is is called from class A");
}

@end
