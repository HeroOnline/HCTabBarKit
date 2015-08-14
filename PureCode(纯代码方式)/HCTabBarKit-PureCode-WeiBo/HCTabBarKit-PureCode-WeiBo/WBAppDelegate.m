//
//  AppDelegate.m
//  HCTabBarKit-PureCode-WeiBo
//
//  Created by HeroCao on 15/8/13.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBAppDelegate.h"
#import "WBTabBarController.h"

@interface WBAppDelegate ()

@end

@implementation WBAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 纯代码方式实现 HCTabBarController
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    WBTabBarController *tabBarController = [[WBTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
