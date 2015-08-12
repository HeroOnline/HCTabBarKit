//
//  UIView+HCTabBarKit.m
//  HCTabBarKit-Storyboards-QZ
//
//  Created by HeroCao on 15/8/12.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "UIView+HCTabBarKit.h"

@implementation UIView (HCTabBarKit)

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
    
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


/**
 *  设备是否为竖屏方向
 *
 *  @author HeroCao, heroonlinecao@gmail.com, 15-08-06 21:08:07
 *
 *  @return 设备是否为竖屏方向
 */
+ (BOOL)isOrientationPortrait {
    
    UIInterfaceOrientation interfaceOrientation = [UIApplication sharedApplication].statusBarOrientation;
    
    if (UIInterfaceOrientationPortrait == interfaceOrientation || UIInterfaceOrientationPortraitUpsideDown == interfaceOrientation) {
        
        return YES;
        
    } else if (UIInterfaceOrientationLandscapeLeft == interfaceOrientation || UIInterfaceOrientationLandscapeRight == interfaceOrientation) {
        
        return NO;
    }
    return YES;
}

@end
