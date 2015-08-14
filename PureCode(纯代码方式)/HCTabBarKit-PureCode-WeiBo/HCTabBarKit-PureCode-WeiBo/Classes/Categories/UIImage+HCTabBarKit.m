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

/**
 *  @author HeroCao, 15-05-02 21:05:54
 *
 *  适配不同版本的图片
 *
 *  @param imageName           <#imageName description#>
 *  @param othersSpecialSuffix <#othersSpecialSuffix description#>
 *
 *  @return <#return value description#>
 */
+ (instancetype)imageForAdaptedWithImageName:(NSString *)imageName othersSpecialSuffix:(NSString *)othersSpecialSuffix isOriginalRendering:(BOOL)isOriginalRendering{
    
    
    // Deployment Target : 6.0
    
    // __IPHONE_OS_VERSION_MIN_REQUIRED=60000, __IPHONE_OS_VERSION_MAX_ALLOWED=80300, __IPHONE_7_0=70000
    //    AULog(@"__IPHONE_OS_VERSION_MIN_REQUIRED=%d, __IPHONE_OS_VERSION_MAX_ALLOWED=%d, __IPHONE_7_0=%d", __IPHONE_OS_VERSION_MIN_REQUIRED, __IPHONE_OS_VERSION_MAX_ALLOWED, __IPHONE_7_0);
    
    // systemVersion=8.1, systemName=iPhone OS, model=iPhone Simulator, name=iPhone Simulator
    
    //    HCLog(@"systemVersion=%@, systemName=%@, model=%@, name=%@", [UIDevice currentDevice].systemVersion, [UIDevice currentDevice].systemName, [UIDevice currentDevice].model, [UIDevice currentDevice].name);
    
    NSString *newImageName = nil;
    
    //    if (getIsIOS7Plus()) {
    newImageName = [imageName stringByAppendingString:othersSpecialSuffix];
    //    }
    
    
    UIImage *image = [UIImage imageNamed:newImageName];;
    
    if (!image) {
        image = [UIImage imageNamed:imageName];
    }
    
    if(isOriginalRendering)
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return image;
}

+ (instancetype)imageForAdaptedWithImageName:(NSString *)imageName othersSpecialSuffix:(NSString *)othersSpecialSuffix{
    
    return [UIImage imageForAdaptedWithImageName:imageName othersSpecialSuffix:othersSpecialSuffix isOriginalRendering:NO];
}

+ (UIImage *)imageForAdaptedWithImageName:(NSString *)imageName{
    return [UIImage imageForAdaptedWithImageName:imageName isOriginalRendering:NO];
}

+ (UIImage *)imageForAdaptedWithImageName:(NSString *)imageName isOriginalRendering:(BOOL)isOriginalRendering{
    return [UIImage imageForAdaptedWithImageName:imageName othersSpecialSuffix:@"_os7" isOriginalRendering:isOriginalRendering];
}

@end
