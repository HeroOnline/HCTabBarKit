//
//  WBProfileDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBProfileDetailViewController.h"

@interface WBProfileDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WBProfileDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textLabel.attributedText = self.attributedString;
}


@end
