//
//  ViewController.m
//  Farkle
//
//  Created by Kristen L. Fisher on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet UIButton *rollButton;
@property (weak, nonatomic) IBOutlet DieLabel *myDie1;
@property (weak, nonatomic) IBOutlet DieLabel *myDie2;
@property (weak, nonatomic) IBOutlet DieLabel *myDie3;
@property (weak, nonatomic) IBOutlet DieLabel *myDie4;
@property (weak, nonatomic) IBOutlet DieLabel *myDie5;
@property (weak, nonatomic) IBOutlet DieLabel *myDie6;
@property NSMutableArray *dice;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myDie1.delegate = self;
    self.myDie2.delegate = self;
    self.myDie3.delegate = self;
    self.myDie4.delegate = self;
    self.myDie5.delegate = self;
    self.myDie6.delegate = self;

    self.dice = [[NSMutableArray alloc] init];
}

-(void)didChooseDie:(DieLabel *)dieLabel
{
    [self.dice addObject:dieLabel];
    dieLabel.backgroundColor = [UIColor redColor];

    
}

- (IBAction)onRollButtonPressed:(id)sender
{
    for (DieLabel *object in self.view.subviews)
    {
        if([object isKindOfClass:[DieLabel class]] && ![self.dice containsObject:object])
        {
            [object roll];
        }
    }
}

@end