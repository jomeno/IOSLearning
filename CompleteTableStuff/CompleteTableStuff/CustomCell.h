//
//  CustomCell.h
//  CompleteTableStuff
//
//  Created by iAmJavaDemon on 6/5/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *myCustomName;
@property (weak, nonatomic) IBOutlet UILabel *myCustomDay;
@property (weak, nonatomic) IBOutlet UIImageView *myCustomImage;

@end
