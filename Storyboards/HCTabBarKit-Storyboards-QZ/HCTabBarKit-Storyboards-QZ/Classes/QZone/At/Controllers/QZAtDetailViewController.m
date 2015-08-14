//
//  QZAtDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZAtDetailViewController.h"
#import "BullB.h"

@interface QZAtDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)didClickBack:(UIBarButtonItem *)sender;

@end

@implementation QZAtDetailViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textLabel.text = self.bullB.detail;
    self.title = [NSString stringWithFormat:@"%@-%ld", @"与我有关-详细", self.bullB.index + 1];
}

#pragma mark - Actions

- (IBAction)didClickBack:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
