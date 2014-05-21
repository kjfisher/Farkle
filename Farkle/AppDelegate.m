//
//  AppDelegate.m
//  Farkle
//
//  Created by Kristen L. Fisher on 5/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "AppDelegate.h"
#import <CheckMate/CheckMate.h>

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions

{
    [CheckMate initializeFramework:@[@"0c6c0421323770989d12d5ef695da768", @"620a222ed7eec50e0cbf15fb2b464b30"]];

    return YES;
}

@end

