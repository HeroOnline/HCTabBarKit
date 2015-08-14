//
//  QZSpaceDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZSpaceDetailViewController.h"
#import "BullB.h"

@interface QZSpaceDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)didClickBack:(UIBarButtonItem *)sender;

@end

@implementation QZSpaceDetailViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textLabel.text = self.bullB.detail;
    self.title = [NSString stringWithFormat:@"%@-%ld", @"我的空间-详细", self.bullB.index + 1];
}

#pragma mark - Actions

- (IBAction)didClickBack:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
