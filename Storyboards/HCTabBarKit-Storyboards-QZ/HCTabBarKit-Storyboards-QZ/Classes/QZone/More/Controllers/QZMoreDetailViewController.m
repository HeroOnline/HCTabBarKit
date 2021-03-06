//
//  QZMoreDetailViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZMoreDetailViewController.h"
#import "BullB.h"

@interface QZMoreDetailViewController ()

/// hc_hidesTabBarWhenPushed 属性 和 系统自带的 hidesBottomBarWhenPushed 效果的一样的，如果希望有这个效果，注意，必须在push出来的目标控制器中添加这个属性，原子性：nonatomic，类型必须为：BOOL，必须为只读：readonly ，属性名称必须为：hc_hidesTabBarWhenPushed，在代码中不需要赋值和调用，hc_hidesTabBarWhenPushed 优先级 比在Storyboard中勾选的 Hide Bottom Bar on Push 的优先级高
@property (nonatomic, readonly) BOOL hc_hidesTabBarWhenPushed;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)didClickBack:(UIBarButtonItem *)sender;

@end

@implementation QZMoreDetailViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textLabel.text = self.bullB.detail;
    self.title = [NSString stringWithFormat:@"%@-%ld", @"玩吧-详细", self.bullB.index + 1];
}

#pragma mark - Actions

- (IBAction)didClickBack:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
