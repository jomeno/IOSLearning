//
//  Solve.h
//  Calculator
//
//  Created by iAmJavaDemon on 6/2/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Solve : NSObject
@property(weak, nonatomic)NSString *msg;
@property int a;

-(int)sum:(int)a and: (int)b;
-(void)diff:(int)a and: (int)b;

@end
