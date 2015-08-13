//
//  HCTabBarController.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/8.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HCTabBar;

@protocol HCTabBarControllerDelegate;

@interface HCTabBarController : UITabBarController

@property (nonatomic, weak) HCTabBar *hc_tabBar;

@property (nonatomic, weak) id<HCTabBarControllerDelegate> tabBarDelegate;

/**
 *  初始化，提示：子类必须重写这个方法
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-02 23:08:14
 */
- (void)hc_initialize;

@end

/**
 *  HCTabBarControllerDelegate
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-05-09 23:05:40
 */
@protocol HCTabBarControllerDelegate <NSObject>

/// 1. 只有 HCTabBarButtonItem 的 isSpecialEffect为YES 的时候，tabBarButton 才不为 nil， 其他都为 nil，2. 假如 HCTabBarItem 的 isOthersDistinctiveEvent 为 YES，也会返回 tabBarButton
- (void) tabBarController:(HCTabBarController *)tabBarController tabBarButton:(UIButton *)tabBarButton selectedIndex:(NSInteger)selectedIndex originIndex:(NSInteger)originIndex;


@end

