//
//  UIColor+HCTabBarKit.h
//  HCTabBarKit-Storyboards-QZ
//
//  Created by HeroCao on 15/8/12.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HCTabBarKit)

/**
 *  随机产生颜色
 *
 *  @author HeroCao, 15-05-02 18:05:48
 *
 *  @return UIColor
 */
+ (instancetype)colorForRandom;

+ (instancetype)colorWithHexString:(NSString *)hexString;

@end
