//
//  UIView+HCTabBarKit.h
//  HCTabBarKit-Storyboards-QZ
//
//  Created by HeroCao on 15/8/12.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HCTabBarKit)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGSize size;

/**
 *  设备是否为竖屏方向
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-06 21:08:07
 *
 *  @return 设备是否为竖屏方向
 */
+ (BOOL)isOrientationPortrait;

@end
