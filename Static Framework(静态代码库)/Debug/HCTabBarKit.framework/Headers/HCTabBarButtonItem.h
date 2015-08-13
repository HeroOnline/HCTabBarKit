//
//  HCTabBarButtonItem.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/8.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HCTabBarSpecialEffectType) {
    /// 默认（默认宽度和高度）
    HCTabBarSpecialEffectTypeDefault =          1 << 0,
    /// 特殊效果：正方形（宽高一样）
    HCTabBarSpecialEffectTypeSquare =           1 << 1,
    /// 特殊效果：凸起
    HCTabBarSpecialEffectTypeBulge =            1 << 2,
    /// 特殊效果：凸起和正方形（宽高一样）
    HCTabBarSpecialEffectTypeBulgeSquare =      1 << 3
};

@class HCTabBarBadgeItem;

@interface HCTabBarButtonItem : NSObject

@property (strong, nonatomic) NSMutableDictionary *attributes;

/// 需要权限验证的，默认为NO，例如当前Tab需要登入才可以进去的
@property (nonatomic, getter = isRequireCertificationAuthority) BOOL requireCertificationAuthority;

/// 特殊效果，例如：中间是一个Button，默认是NO
@property (nonatomic, getter = isSpecialEffect) BOOL specialEffect;

@property (nonatomic) HCTabBarSpecialEffectType specialEffectType;

/// 特殊效果：凸起的值，前提是 isSpecialEffect == YES && specialEffectType == HCTabBarSpecialEffectTypeBulge，正数往屏幕上方向，负数往屏幕下方向，取值范围[-80.0f, 80.0f]
@property (nonatomic) CGFloat specialEffectTypeBulgeFillValue;

/// 设置当前HCTabBarButtonItem对应的Tab为默认选中状态，默认为NO，将默认选中第一个Tab
@property (nonatomic, getter=isDefaultSelected) BOOL defaultSelected;

/// 单纯图片，也就是没有包含标题文字的图片，默认是NO，也就是复杂图片（图片中已经包含标题文字）
@property (nonatomic, getter=isSimplicityImage) BOOL simplicityImage;

/// 只有 isSimplicityImage == YES 才有效，也就是图片和标题分开
@property (nonatomic) CGFloat titleEdgesTop;

/// 只有 isSimplicityImage == YES 才有效，也就是图片和标题分开
@property (nonatomic) CGFloat titleEdgesBottom;  // default 3 , min 3

/// 只有 isSimplicityImage == YES 才有效，也就是图片和标题分开
@property (nonatomic) CGFloat imageEdgesTop;

/// 只有 isSimplicityImage == YES 才有效，也就是图片和标题分开
@property (nonatomic) CGFloat imageEdgesBottom;

/// 动态计算Normal标题宽度，不可以设置
@property (nonatomic) CGFloat textWidth;

/// 动态计算Normal标题宽度，不可以设置
@property (nonatomic) CGFloat textHeight;

/// 动态计算Normal标题Size，不可以设置
@property (nonatomic) CGSize textSize;

/// 动态计算Normal图片宽度，不可以设置
@property (nonatomic) CGFloat imageWidth;

/// 动态计算Normal图片宽度，不可以设置
@property (nonatomic) CGFloat imageHeight;

/// 动态计算Normal标图片Size，不可以设置
@property (nonatomic) CGSize imageSize;

/// 当图片不可用状态是否需要调整背景，默认为ON
@property (nonatomic) BOOL adjustsImageWhenDisabled;

/// 当图片高亮状态是否需要调整背景，默认为ON
@property (nonatomic) BOOL adjustsImageWhenHighlighted;

// HCTabBarBadgeItem
@property (nonatomic, strong) HCTabBarBadgeItem *tabBarBadgeItem;

/**
 *  创建HCTabBarBadgeItem实例对象
 *
 *  @author HeroCao, 15-08-11 21:08:27
 *
 *  @param attributes 请查看 HCTabBarAttributeItem.h 中的attributes
 *
 *  @return 返回HCTabBarBadgeItem实力对象
 */
- (instancetype)initWithAttributes:(NSDictionary *)attributes;

/**
 *  创建HCTabBarBadgeItem实例对象
 *
 *  @author HeroCao, 15-08-11 21:08:27
 *
 *  @param attributes 请查看 HCTabBarAttributeItem.h 中的attributes
 *
 *  @return 返回HCTabBarBadgeItem实力对象
 */
+ (instancetype)itemWithAttributes:(NSDictionary *)attributes;

@end
