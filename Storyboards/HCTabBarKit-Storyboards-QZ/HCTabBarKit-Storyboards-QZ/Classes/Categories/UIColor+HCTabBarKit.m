//
//  UIColor+HCTabBarKit.m
//  HCTabBarKit-Storyboards-QZ
//
//  Created by HeroCao on 15/8/12.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "UIColor+HCTabBarKit.h"

@implementation UIColor (HCTabBarKit)

/**
 *  @author HeroCao, 15-05-02 18:05:48
 *
 *  随机产生颜色
 *
 *  @return UIColor
 */
+ (instancetype)colorForRandom{
    CGFloat red = arc4random_uniform(256) / 255.0f;
    CGFloat blue = arc4random_uniform(256) / 255.0f;
    CGFloat green = arc4random_uniform(256) / 255.0f;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
