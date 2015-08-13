//
//  HCTabBarItem.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/9.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HCTabBarItem : NSObject

// TabBarButton edges
@property (nonatomic) CGFloat buttonEdgesLeft;
@property (nonatomic) CGFloat buttonEdgesTop;
@property (nonatomic) CGFloat buttonEdgesRight;
@property (nonatomic) CGFloat buttonEdgesBottom;

// TabBarBadge edges
// 以每一个Tab的宽度的一半为基础来设置

/// Badge的左边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesLeft;

/// Badge的顶部边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesTop;

/// Badge的右边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesRight;

/// Badge的底部边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesBottom;


/// Badge的内切左边缘，默认为0, 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic) CGFloat badgeInsetEdgesLeft;
/// Badge的内切顶边缘，默认为0, 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic) CGFloat badgeInsetEdgesTop;
/// Badge的内切右边缘，默认为0, 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic) CGFloat badgeInsetEdgesRight;
/// Badge的内切底边缘，默认为0, 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic) CGFloat badgeInsetEdgesBottom;


/// 设置Badge的背景图片, 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic, strong) UIImage *badgeBackgroundImage;

/// 设置所有BadgeValue，字体颜色， 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic, strong) UIColor *badgeForegroundColor;

/// 设置所有BadgeValue的字体， 设置所有 Badge ，全局的 ， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic, strong) UIFont *badgeFont;


/// 设置所有的BadgeValue 字符串最大长度[2,3]，默认为3， HCTabBarBadgeItem 是对每一个进行设置
@property (nonatomic) NSUInteger maxBadgeValueTextLength;

/// 设置所有的Tab的标题的字体，只有是图片和标题分开的才有效果，也就是 isSimplicityImage 为NO，默认为10.0大小的字体
@property (nonatomic, strong) UIFont *tabBarTitleFont;

/// 设置所有的Tab的标题正常状态的颜色，只有是图片和标题分开的才有效果，也就是 isSimplicityImage 为NO，默认为lightGrayColor
@property (nonatomic, strong) UIColor *tabBarTitleNormalForegroundColor;

/// 设置所有的Tab的标题选中状态的颜色，只有是图片和标题分开的才有效果，也就是 isSimplicityImage 为NO，默认为lightGrayColor
@property (nonatomic, strong) UIColor *tabBarTitleSelectedForegroundColor;

/// 单纯图片，也就是没有包含标题文字的图片，默认是NO，也就是复杂图片（图片中已经包含标题文字）
@property (nonatomic, getter = isSimplicityImage) BOOL simplicityImage;

/// 其他的与众不同的事件，如果为YES，一般的Tab处理Block中会返回HCTabBarButton实例对象，默认为NO
@property (nonatomic, getter = isOthersDistinctiveEvent) BOOL othersDistinctiveEvent;


/// Badge小圆圈半径，取值范围：(0.0f, 11.0f]，默认值是6.0f，只有 badgeType == HCTabBarBadgeTypeSmallCircle 才有效，注意：HCTabBarBadgeItem 的优先级比 HCTabBarItem 优先级高
@property (nonatomic) CGFloat badgeSmallCircleRadius;

/**
 *  创建HCTabBarItem实例对象
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-07 13:08:08
 *
 *  @return 返回HCTabBarItem实例对象
 */
+ (instancetype)item;

@end
