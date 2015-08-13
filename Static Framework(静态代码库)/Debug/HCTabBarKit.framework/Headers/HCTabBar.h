//
//  HCTabBar.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/8.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HCTabBarController, HCTabBarItem;

@interface HCTabBar : UITabBar

@property (nonatomic, copy, readonly) NSArray *tabBarButtonItems;

@property (nonatomic, strong) HCTabBarItem *tabBarItem;

/// 1. 只有 HCTabBarButtonItem 的 isSpecialEffect为YES 的时候，tabBarButton 才不为 nil， 其他都为 nil，2. 假如 HCTabBarItem 的 isOthersDistinctiveEvent 为 YES，也会返回 tabBarButton
@property (copy, nonatomic) void (^tabBarHandleSelectedBlock) (UIButton *tabBarButton, NSInteger selectedIndex, NSInteger originalIndex);

/// 双击手势识别Block，只有isSpecialEffect == NO才有效的，同时在创建HCTabBar实例对象的时候，必须设置参数：isNeedHandleDoubleTapGesture:YES 才激活，否则未激活，默认 isNeedHandleDoubleTapGesture 为 NO
@property (nonatomic, copy) void (^tabBarHandleDoubleTapGestureBlock)(NSInteger selectedIndex, NSInteger originalIndex);

/// 需要权限验证的Block
@property (nonatomic, copy) BOOL (^tabBarHandleRequireCertificationAuthorityBlock)(NSInteger willSelectIndex, NSInteger originalIndex);

/**
 *  创建HCTabBar实例对象
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-05 12:08:20
 *
 *  @param tabBarButtonItems            tabBarButtonItems
 *  @param tabBarController             tabBarController
 *  @param isNeedHandleDoubleTapGesture 是否需要处理双击手势识别，如果设置为NO，那么 tabBarHandleDoubleTapGestureBlock 就无效了
 *
 *  @return 返回HCTabBar实例对象
 */
- (instancetype)initWithTabBarButtonItems:(NSArray *)tabBarButtonItems tabBarController:(HCTabBarController *)tabBarController isNeedHandleDoubleTapGesture:(BOOL)isNeedHandleDoubleTapGesture;

/**
 *  创建HCTabBar实例对象
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-05 12:08:20
 *
 *  @param tabBarButtonItems            tabBarButtonItems
 *  @param tabBarController             tabBarController
 *  @param isNeedHandleDoubleTapGesture 是否需要处理双击手势识别，如果设置为NO，那么 tabBarHandleDoubleTapGestureBlock 就无效了
 *
 *  @return 返回HCTabBar实例对象
 */
+ (instancetype)tabBarWithTabBarButtonItems:(NSArray *)tabBarButtonItems tabBarController:(HCTabBarController *)tabBarController isNeedHandleDoubleTapGesture:(BOOL)isNeedHandleDoubleTapGesture;

/**
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-11 22:08:17
 *
 *  切换Tab
 *
 *  @param index Tab的Index
 */
- (void)switchTabWithIndex:(NSInteger)index;

/**
 *  刷新Badge，如果当前Badge已经设置隐藏，使用BadgeValue刷新之后，会显示出来
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-11 22:08:44
 *
 *  @param index Tab的Index
 *  @param value Badge Value，0不显示
 */
- (void)refreshBadgeWithIndex:(NSInteger)index value:(NSString *)value;

/**
 *  刷新Badge，如果当前Badge已经设置隐藏，使用BadgeValue刷新之后，会显示出来
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-11 22:08:15
 *
 *  @param index                Tab的Index
 *  @param value                Badge Value
 *  @param badgeBackgroundImage badge的背景图片
 */
- (void)refreshBadgeWithIndex:(NSInteger)index value:(NSString *)value badgeBackgroundImage:(UIImage *)badgeBackgroundImage;

/**
 *  隐藏Badge，隐藏之后会清空BadgeValue
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-11 22:08:06
 *
 *  @param index Tab的Index
 */
- (void)hideBadgeWithIndex:(NSInteger)index;

/**
 *  隐藏所有Badge，同时将BadgeValue清空
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-11 17:08:23
 */
- (void)hideAllBadge;

@end
