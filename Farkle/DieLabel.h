//
//  DieLabel.h
//  Farkle
//
//  Created by Kristen L. Fisher on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate
-(void)didChooseDie:(id)dieLabel;
@end

@interface DieLabel : UILabel
@property id<DieLabelDelegate>delegate;


- (void)roll;

@end

