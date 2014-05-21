//
//  DieLabel.m
//  Farkle
//
//  Created by Kristen L. Fisher on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel ()
@property UILabel *dieLabel;
@property BOOL isPicked;
@end

@implementation DieLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (void)roll
{
    int random = arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%d", random];
}

- (IBAction)onTapped:(id)sender
{
    [self.delegate didChooseDie:self];
}
@end
