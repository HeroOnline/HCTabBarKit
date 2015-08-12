//
//  MGJPlusViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "MGJPlusViewController.h"

@interface MGJPlusViewController ()

@end

@implementation MGJPlusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - touchesBegan:withEvent:

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"touchesBegan: # ...");
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
