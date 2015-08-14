//
//  WBLoginViewController.h
//  HCTabBarKit-PureCode-WeiBo
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBLoginViewController : UIViewController

/// 需要权限验证的Tab Index
@property (nonatomic) NSUInteger tabIndex;

/// HCTabBarController , 注意，必须加上前缀 hc_ ，否则与系统的冲突
@property (nonatomic, weak) HCTabBarController *hc_tabBarController;

@end
