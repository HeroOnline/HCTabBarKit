//
//  WBMessageDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBMessageDetailViewController.h"

@interface WBMessageDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WBMessageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textLabel.attributedText = self.attributedString;
}


@end
