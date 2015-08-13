//
//  AppDelegate.m
//  1_HelloWorld
//
//  Created by X on 13/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.backgroundColor = [UIColor whiteColor];


    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;

    [self.window makeKeyAndVisible];
    return YES;
}


@end
