//
//  HCTabBarBadgeItem.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/10.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HCTabBarBadgeType) {
    /// 默认类型，就是BadgeValue
    HCTabBarBadgeTypeDefault        = 1 << 0,
    /// 小圆圈，没有BadgeValue
    HCTabBarBadgeTypeSmallCircle    = 1 << 1
};

@interface HCTabBarBadgeItem : NSObject

// 以每一个Tab的宽度的一半为基础来设置
/// Badge的左边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesLeft;

/// Badge的顶部边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesTop;

/// Badge的右边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesRight;

/// Badge的底部边缘，HCTabBarBadgeItem 中的优先级比 HCTabBarItem中的优先级高，HCTabBarItem 中的是设置所有的，HCTabBarBadgeItem 中的是对当前实例对象的设置
@property (nonatomic) CGFloat badgeEdgesBottom;

/// 设置Badge的背景图片，图片规格：@2x:44x44，@3x:66x66
@property (nonatomic, strong) UIImage *backgroundImage;

/// Badge Value的文字颜色
@property (nonatomic, strong) UIColor *foregroundColor;

/// Badge Value字体
@property (nonatomic, strong) UIFont *font;

/// Badge Value
@property (nonatomic, copy) NSString *value;

/// BadgeValue 字符串最大长度(位数)，取值范围[2,3]，默认是3
@property (nonatomic) NSUInteger maxValueTextLength;

/// Badge的内切左边缘，默认为0
@property (nonatomic) CGFloat badgeInsetEdgesLeft;

/// Badge的内切顶边缘，默认为0
@property (nonatomic) CGFloat badgeInsetEdgesTop;

/// Badge的内切右边缘，默认为0
@property (nonatomic) CGFloat badgeInsetEdgesRight;

/// Badge的内切底边缘，默认为0
@property (nonatomic) CGFloat badgeInsetEdgesBottom;

/// BadgeType，默认为BadgeValue
@property (nonatomic) HCTabBarBadgeType badgeType;

/// 小圆圈半径，取值范围：(0.0f, 11.0f]，默认值是6.0f，只有 badgeType == HCTabBarBadgeTypeSmallCircle 才有效，注意：HCTabBarBadgeItem 的优先级比 HCTabBarItem 优先级高
@property (nonatomic) CGFloat badgeSmallCircleRadius;

/**
 *  创建一个HCTabBarBadgeItem实例对象
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-07 13:08:28
 *
 *  @return 返回HCTabBarBadgeItem实例对象
 */
+ (instancetype)badgeItem;

@end
