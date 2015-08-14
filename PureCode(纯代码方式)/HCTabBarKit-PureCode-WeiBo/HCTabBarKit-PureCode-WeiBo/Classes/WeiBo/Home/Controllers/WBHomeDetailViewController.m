//
//  WBHomeDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBHomeDetailViewController.h"

@interface WBHomeDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WBHomeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textLabel.attributedText = self.attributedString;
}

@end
