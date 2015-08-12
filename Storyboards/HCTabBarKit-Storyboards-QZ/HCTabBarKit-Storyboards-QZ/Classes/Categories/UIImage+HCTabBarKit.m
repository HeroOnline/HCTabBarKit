//
//  UIImage+HCTabBarKit.m
//  HCTabBarKit-Storyboards-QZ
//
//  Created by HeroCao on 15/8/12.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "UIImage+HCTabBarKit.h"

@implementation UIImage (HCTabBarKit)

+ (instancetype)resizeImage:(UIImage *)image{
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(image.size.height * 0.5, image.size.width * 0.5, image.size.height * 0.5, image.size.width * 0.5) resizingMode:UIImageResizingModeStretch];
}


@end
