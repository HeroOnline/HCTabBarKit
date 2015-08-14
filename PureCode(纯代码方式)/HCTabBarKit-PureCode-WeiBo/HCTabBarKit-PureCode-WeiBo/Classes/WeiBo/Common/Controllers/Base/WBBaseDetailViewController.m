//
//  WBBaseDetailViewController.m
//  HCTabBarKit
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBBaseDetailViewController.h"
#import "BullB.h"

@interface WBBaseDetailViewController ()

/// hc_hidesTabBarWhenPushed 属性 和 系统自带的 hidesBottomBarWhenPushed 效果的一样的，如果希望有这个效果，注意，必须在push出来的目标控制器中添加这个属性，原子性：nonatomic，类型必须为：BOOL，必须为只读：readonly ，属性名称必须为：hc_hidesTabBarWhenPushed，在代码中不需要赋值和调用，hc_hidesTabBarWhenPushed 优先级 比在Storyboard中勾选的 Hide Bottom Bar on Push 的优先级高
@property (nonatomic, readonly) BOOL hc_hidesTabBarWhenPushed;

@end

@implementation WBBaseDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSRange range = [self.bullB.detail rangeOfString:@"HCTabBarKit"];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.bullB.detail];
    [attributedString addAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:28.0f], NSForegroundColorAttributeName: [UIColor colorForRandom]} range:range];
    
    self.attributedString = attributedString;
    
    self.title = self.bullB.category;
}

@end
