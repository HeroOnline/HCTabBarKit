//
//  WBDiscoverDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBDiscoverDetailViewController.h"

@interface WBDiscoverDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WBDiscoverDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textLabel.attributedText = self.attributedString;
}

@end
