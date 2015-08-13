//
//  HCDispatchSignalHub.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/5/30.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCDispatchSignalHub : UIViewController

/// 链接的目标控制器
@property (nonatomic, strong, readonly) UIViewController *hc_destinationController;

/// TabBar所在的Storyboard中，需要链接到目标控制器的控制器(其实就是：HCTabBarController ——》UINavigationController ——》 UIViewController) 的 Show the identity inspector ——》User Defined Runtime Attributes，添加KeyPath为：storyboardName， Type：String，Value：目标控制器所在的Storyboard名称，不要包含扩展名 .storyboard，注意，目标控制器所在的Storyboard中，目标控制器必须是 勾选 Is Initial View Controller，否则报错，不可以在目标控制器前面使用UINavigationController，否则会出现其他诡异问题，例如：Hide Bottom Bar on Push 无效
@property (nonatomic, copy) NSString *storyboardName;

@end
