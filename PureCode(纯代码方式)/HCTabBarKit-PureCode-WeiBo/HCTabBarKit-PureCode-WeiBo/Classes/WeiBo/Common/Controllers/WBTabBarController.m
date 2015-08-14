//
//  WBTabBarController.m
//  HCTabBarKit
//
//  Created by HeroCao on 15/5/9.
//  Copyright (c) 2015年 AdvancedUniversity. All rights reserved.
//

#import "WBTabBarController.h"
#import "WBHomeViewController.h"
#import "WBDiscoverViewController.h"
#import "WBProfileViewController.h"
#import "WBMessageViewController.h"
#import "WBLoginViewController.h"
#import "WBPlusViewController.h"

//static CGFloat const WBTabBarTitleFontSize = 10.0f;

static NSString *const WBTabBarTitleNormalColorString = @"#FF888888";

static NSString *const WBTabBarTitleSelectedColorString = @"#FF8200";


@interface WBTabBarController ()

/// 告诉HCTabBarKit 框架不使用 Storyboard，注意必须是nonatomic、BOOL类型，readonly
@property (nonatomic, readonly) BOOL hc_doNotWantToUseTheStoryboard;

@end

@implementation WBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    HCLog(@"viewDidLoad # ...");

}

- (void)hc_initialize {
    
    HCLog(@"WBTabBarController # hc_initialize # ...");
    
    //////  纯代码方式实现 TabBar ，必须首先添加控制器 Begin  ////////////////////
    
    WBHomeViewController *homeVC = [[WBHomeViewController alloc] init];
    
    [self hc_addChildViewController:homeVC title:@"Home"];
    
    WBMessageViewController *messageVC = [[WBMessageViewController alloc] init];
    
    [self hc_addChildViewController:messageVC title:@"Message"];
    
    // 目的是占位
    UIViewController *plusVC = [[UIViewController alloc] init];
    
    [self hc_addChildViewController:plusVC];
    
    WBDiscoverViewController *discoverVC = [[WBDiscoverViewController alloc] init];
    
    [self hc_addChildViewController:discoverVC title:@"Discover"];
    
    WBProfileViewController *profileVC = [[WBProfileViewController alloc] init];
     
    [self hc_addChildViewController:profileVC title:@"Me"];
    
    //////  纯代码方式实现 TabBar ，必须首先添加控制器 End  ////////////////////
    
    NSMutableArray *tabBarButtonItems = [NSMutableArray array];
    
    
    // 首页(Home)
    NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    dict1[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_home"];
    
    
    dict1[HCTabBarButtonSelectedImageAttributeName] = [UIImage imageNamed:@"tabbar_home_selected"];
    
    // Title Message
    //    dict1[HCTabBarTitleFontAttributeName] = [UIFont systemFontOfSize:QZoneTabBarTitleDefaultFontSize];   // 需要全局设置一次
    
    dict1[HCTabBarTitleNormalAttributeName] = @"Home";
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleNormalColorString];
    
    //    dict1[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor lightGrayColor];   // 需要全局设置一次
    
    //    dict2[HCTabBarTitleSelectedForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleSelectedColorString];   // 需要全局设置一次
    
    
    HCTabBarButtonItem *tabBarButtonItem01 = [HCTabBarButtonItem itemWithAttributes:dict1];
    
    
    // Message
    NSMutableDictionary *dict2 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    dict2[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_message_center"];
    
    
    dict2[HCTabBarButtonSelectedImageAttributeName] = [UIImage imageNamed:@"tabbar_message_center_selected"];
    
    // Title Message
    //    dict2[HCTabBarTitleFontAttributeName] = [UIFont systemFontOfSize:QZoneTabBarTitleDefaultFontSize];   // 需要全局设置一次
    
    dict2[HCTabBarTitleNormalAttributeName] = @"Message";
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleNormalColorString];
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor lightGrayColor];   // 需要全局设置一次
    
    //    dict2[HCTabBarTitleSelectedForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleSelectedColorString];   // 需要全局设置一次
    
    
    HCTabBarButtonItem *tabBarButtonItem02 = [HCTabBarButtonItem itemWithAttributes:dict2];
    
    // 中间的 + 号
    NSMutableDictionary *dict3 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    //    dict3[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_btn"];  // 蘑菇街
    
    // in App 中间Camera
    //     dict3[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"paizhao"];
    
    dict3[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_compose_icon_add"];
    
        dict3[HCTabBarButtonNormalBackgroundImageAttributeName] = [UIImage imageNamed:@"tabbar_compose_button"];
    
    dict3[HCTabBarButtonHighlightedBackgroundImageAttributeName] = [UIImage imageNamed:@"tabbar_compose_button_highlighted"];
    
    //    dict3[HCTabBarButtonNormalBackgroundImageAttributeName] = [UIImage imageNamed:@"OpenDownPrgFront"];
    
    
        dict3[HCTabBarButtonSelectedImageAttributeName] = [UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"];
    
    // Title Message
    //    dict3[HCTabBarTitleFontAttributeName] = [UIFont systemFontOfSize:QZoneTabBarTitleDefaultFontSize];   // 需要全局设置一次
    
    //    dict3[HCTabBarTitleNormalAttributeName] = @"[+]";
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleNormalColorString];
    
    //    dict3[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor lightGrayColor];   // 需要全局设置一次
    
    //    dict2[HCTabBarTitleSelectedForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleSelectedColorString];   // 需要全局设置一次
    
    
    HCTabBarButtonItem *tabBarButtonItem03 = [HCTabBarButtonItem itemWithAttributes:dict3];
    
    
    tabBarButtonItem03.specialEffect = YES;
    
//        tabBarButtonItem03.specialEffectType = HCTabBarSpecialEffectTypeSquare;
    //    tabBarButtonItem03
    
    //     tabBarButtonItem03.specialEffectType = HCTabBarSpecialEffectTypeBulge;
    
    //    tabBarButtonItem03.specialEffectTypeBulgeFillValue = 8.0f;  // 8.0
    
//    tabBarButtonItem03.specialEffectType = HCTabBarSpecialEffectTypeBulgeSquare;
    
    //    tabBarButtonItem03.specialEffectTypeBulgeFillValue = 6.0f;  // 22.0f
    
    //    tabBarButtonItem03.imageEdgesTop = 0;
    
    //    tabBarButtonItem03.imageHeight
    
    
    tabBarButtonItem03.adjustsImageWhenHighlighted = YES;
    
    // Discover
    NSMutableDictionary *dict4 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    dict4[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_discover"];
    
    
    dict4[HCTabBarButtonSelectedImageAttributeName] = [UIImage imageNamed:@"tabbar_discover_selected"];
    
    // Title Message
    //    dict4[HCTabBarTitleFontAttributeName] = [UIFont systemFontOfSize:QZoneTabBarTitleDefaultFontSize];   // 需要全局设置一次
    
    dict4[HCTabBarTitleNormalAttributeName] = @"Discover";
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleNormalColorString];
    
    //    dict4[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor lightGrayColor];   // 需要全局设置一次
    
    //    dict2[HCTabBarTitleSelectedForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleSelectedColorString];   // 需要全局设置一次
    
    
    HCTabBarButtonItem *tabBarButtonItem04 = [HCTabBarButtonItem itemWithAttributes:dict4];
    
//    tabBarButtonItem04.requireCertificationAuthority = YES;
    
    
    // Me(Profile)
    NSMutableDictionary *dict5 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    dict5[HCTabBarButtonNormalImageAttributeName] = [UIImage imageNamed:@"tabbar_profile"];
    
    
    dict5[HCTabBarButtonSelectedImageAttributeName] = [UIImage imageNamed:@"tabbar_profile_selected"];
    
    // Title Message
    //    dict5[HCTabBarTitleFontAttributeName] = [UIFont systemFontOfSize:QZoneTabBarTitleDefaultFontSize];   // 需要全局设置一次
    
    dict5[HCTabBarTitleNormalAttributeName] = @"Me";
    
    //    dict2[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleNormalColorString];
    
    //    dict5[HCTabBarTitleNormalForegroundColorAttributeName] = [UIColor redColor];   // 需要全局设置一次
    
    //    dict2[HCTabBarTitleSelectedForegroundColorAttributeName] = [UIColor colorWithHexString:WBTabBarTitleSelectedColorString];   // 需要全局设置一次
    
    
    HCTabBarButtonItem *tabBarButtonItem05 = [HCTabBarButtonItem itemWithAttributes:dict5];
    
    // 设置需要权限验证
    tabBarButtonItem05.requireCertificationAuthority = YES;
    
    HCTabBarBadgeItem *tabBarBadgeItem01 = [HCTabBarBadgeItem badgeItem];
    //    tabBarBadgeItem01.value = @"88899";
    tabBarButtonItem01.tabBarBadgeItem = tabBarBadgeItem01;
    
    // 太多会变形
    //    tabBarBadgeItem01.backgroundImage = [UIImage imageNamed:@"voice_password_icon"];
    
    //    tabBarBadgeItem01.backgroundImage = [UIImage imageNamed:@"mgj_tabbar_badge"];
    
    HCTabBarBadgeItem *tabBarBadgeItem02 = [HCTabBarBadgeItem badgeItem];
    tabBarBadgeItem02.value = @"99";
    tabBarButtonItem02.tabBarBadgeItem = tabBarBadgeItem02;
    
    
    HCTabBarBadgeItem *tabBarBadgeItem04 = [HCTabBarBadgeItem badgeItem];
    
    tabBarBadgeItem04.badgeType = HCTabBarBadgeTypeSmallCircle;
    //    tabBarBadgeItem04.badgeSmallCircleRadius = 10.0f;
    //    tabBarBadgeItem04.g
    
    //    tabBarBadgeItem04.badgeEdgesLeft = -10.0f;
    //    tabBarBadgeItem04.badgeEdgesTop = 15.0f;
    
    tabBarButtonItem04.tabBarBadgeItem = tabBarBadgeItem04;
    
    HCTabBarBadgeItem *tabBarBadgeItem05 = [HCTabBarBadgeItem badgeItem];
    tabBarBadgeItem05.value = @"999";
    //    tabBarBadgeItem05.backgroundImage = [UIImage imageNamed:@"NewYearHonbao_Button"];
    
    tabBarBadgeItem05.badgeInsetEdgesLeft = 5;
    tabBarBadgeItem05.badgeInsetEdgesTop = 6;
    
    //    tabBarBadgeItem05.badgeEdgesTop = 18.0f;
    //    tabBarBadgeItem05.badgeInsetEdgesLeft = 5.0f;
    
    //     tabBarBadgeItem05.backgroundImage = [UIImage imageNamed:@"voice_password_icon"];
    
    tabBarBadgeItem05.backgroundImage = [UIImage imageNamed:@"hc_voice_password_icon"];
    
    
    //    tabBarBadgeItem05.backgroundImage = [UIImage imageNamed:@"hc_tabbar_badge"];
    
    tabBarButtonItem05.tabBarBadgeItem = tabBarBadgeItem05;
    
    
    tabBarButtonItem01.simplicityImage = YES;
    tabBarButtonItem02.simplicityImage = YES;
    //    tabBarButtonItem03.simplicityImage = YES;
    tabBarButtonItem04.simplicityImage = YES;
    tabBarButtonItem05.simplicityImage = YES;
    
    [tabBarButtonItems addObject:tabBarButtonItem01];
    [tabBarButtonItems addObject:tabBarButtonItem02];
    [tabBarButtonItems addObject:tabBarButtonItem03];
    [tabBarButtonItems addObject:tabBarButtonItem04];
    [tabBarButtonItems addObject:tabBarButtonItem05];
    
    
    
    //    HCTabBarItem
    
    
    // 创建 HCTabBar
    HCTabBar *hc_tabBar = [HCTabBar tabBarWithTabBarButtonItems:tabBarButtonItems tabBarController:self isNeedHandleDoubleTapGesture:YES];
    
    
    HCTabBarItem *tabBarItem = [[HCTabBarItem alloc] init];
    
    //    tabBarItem.tabBarTitleNormalForegroundColor = [UIColor cyanColor];
    
    tabBarItem.tabBarTitleNormalForegroundColor = [UIColor blackColor];
    
    tabBarItem.tabBarTitleSelectedForegroundColor = [UIColor redColor];
    
    //    tabBarItem.badgeBackgroundImage = [UIImage imageNamed:@"mgj_tabbar_badge"];
    
    
    //    tabBarItem.badgeEdgesLeft = -20;
    //
    //    tabBarItem.badgeEdgesTop = 5.0f;
    
    //    tabBarItem.badgeInsetEdgesTop = 10;
    
    
    hc_tabBar.backgroundImage = [UIImage imageNamed:@"tabbar_bg"];
    
    //    tabBarItem.othersDistinctiveEvent = YES;
    
    tabBarItem.buttonEdgesBottom = 2.0f;
    
    hc_tabBar.tabBarItem = tabBarItem;  // 死循环 
    
    
    //#warning 外面创建 HCTabBar 不需要手动添加，否则会出现诡异问题 ！！！，只需要创建就可以了！！！
    //    [self.view addSubview:hc_tabBar];
    
    
    //    [self.tabBar addSubview:hc_tabBar];
    
    HCWeak
    
    // 需要权限验证
    hc_tabBar.tabBarHandleRequireCertificationAuthorityBlock = ^(NSInteger willSelectIndex, NSInteger originalIndex) {
        
        HCLog(@"tabBarHandleRequireCertificationAuthorityBlock # willSelectIndex=%ld, originalIndex=%ld", willSelectIndex, originalIndex);
        
        if (willSelectIndex == 4) {
            
            NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"User"];
            
            User *user = nil;
            
            if (data)
                user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
            
            if (user.loginState) {
                //  已登入，直接进入
                return YES;
            }else{
                
                // weakSelf
                
                // 未登入，首先需要登入
                
                WBLoginViewController *vc = [[WBLoginViewController alloc] init];
                
                vc.tabIndex = willSelectIndex;
                vc.hc_tabBarController = weakSelf;
                [weakSelf presentViewController:vc animated:YES completion:nil];

                
                return NO;
                
            }
            
        }
        
        return NO;
        
    };
    
    //  双击手势识别
    hc_tabBar.tabBarHandleDoubleTapGestureBlock = ^(NSInteger selectedIndex, NSInteger originalIndex) {
        
        HCLog(@"tabBarHandleDoubleTapGestureBlock # 双击刷新 # selectedIndex=%ld, originalIndex=%ld", selectedIndex, originalIndex);
        
        weakSelf.selectedIndex = selectedIndex;
        
        [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:[NSString stringWithFormat:@"%d", arc4random_uniform(100)]];
        
        if (selectedIndex == 3) {
            //            [weakSelf.hc_tabBar showBadgeWithIndex:selectedIndex];  // ok
            
            [weakSelf.hc_tabBar hideAllBadge];
        }
        
        if (selectedIndex == 0) {
            if (selectedIndex == originalIndex) {
                //                [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:@"0"];
                
                //                weakSelf.hc_tabBar refreshBadgeWithIndex:<#(NSInteger)#> value:<#(NSString *)#>
                
                
                //                [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:@"8" badgeBackgroundImage:[UIImage imageNamed:@"icon_launch"]];
                
            }else{
                //                [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:@"888"];
                
                //                [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:@"888" badgeBackgroundImage:[UIImage imageNamed:@"icon_launch"]];
                
                //                [weakSelf.hc_tabBar refreshBadgeWithIndex:selectedIndex value:@"888" badgeBackgroundImage:[UIImage imageNamed:@"hc_tabbar_badge"]];
            }
        }
    };
    
    // 选中
    hc_tabBar.tabBarHandleSelectedBlock = ^(UIButton *tabBarButton, NSInteger selectedIndex, NSInteger originalIndex) {
        
        
        HCLog(@"tabBarHandleSelectedBlock #  selectedIndex=%ld, originalIndex=%ld, tabBarButton=%@", selectedIndex, originalIndex, tabBarButton);
        
        // 不行， ＝＝ 2 不需要处理
        //        weakSelf.selectedIndex = selectedIndex;
        
        if (selectedIndex == 3) {
            
            [weakSelf.hc_tabBar hideBadgeWithIndex:selectedIndex];
        }
        
        if (selectedIndex != 2) {
            
            weakSelf.selectedIndex = selectedIndex;
            
        }else{  // 中间特殊效果
            
            /*
             //            tabBarButton.transform = CGAffineTransformMakeRotation(<#CGFloat angle#>)
             
             __weak typeof(tabBarButton) weakButton = tabBarButton;
             
             
             //                    tabBarButton.transform = CGAffineTransformMakeRotation(M_PI_2);
             
             if (weakButton.tag == 0) {  // 默认状态
             weakButton.tag = 1;
             
             [UIView animateWithDuration:QZoneAnimationDuration animations:^{
             
             tabBarButton.transform = CGAffineTransformMakeRotation(-M_PI_2);
             
             
             //                    tabBarButton.layer.transform = CATransform3DMakeRotation(-M_PI_2 * 1.5, 1.0, 0, 0);
             
             
             } completion:^(BOOL finished) {
             
             [weakButton setImage:[UIImage imageNamed:@"tabbar_btn_click"] forState:UIControlStateNormal];
             }];
             
             
             
             }else{
             weakButton.tag = 0;
             
             [UIView animateWithDuration:QZoneAnimationDuration animations:^{
             
             
             //                    tabBarButton.layer.transform = CATransform3DIdentity;
             
             //                    tabBarButton.transform = CGAffineTransformMakeRotation(M_PI * 1.5);
             
             tabBarButton.transform = CGAffineTransformIdentity;
             
             } completion:^(BOOL finished) {
             
             [weakButton setImage:[UIImage imageNamed:@"tabbar_btn"] forState:UIControlStateNormal];
             }];
             
             
             }
             
             */
            
            //            [weakSelf presentPlusWithButton:tabBarButton ];
            
            //            [weakSelf presentPlusWithButton:tabBarButton selectedIndex:selectedIndex originalIndex:originalIndex];
            
            
            //            [weakSelf handlePlusButton];
            
            //            [weakSelf.plusView perform];
            
            
            // 蘑菇街
            //            [weakSelf presentPlus];
            
            // in App
            
            //            [weakSelf in_cameraWithButton:tabBarButton];
            
            // 微博
            [weakSelf presentPlus];
        }
    };
    
    
}

// +
- (void)presentPlus{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"WBPlus" bundle:nil];
    WBPlusViewController *viewController = storyboard.instantiateInitialViewController;
    [self presentViewController:viewController animated:NO completion:nil];
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
}

// in App 中间的照相机
- (void)in_cameraWithButton:(UIButton *)tabBarButton{
    
    // 动画换背景图片
    
    if (tabBarButton.tag) {  // 1
        tabBarButton.tag = 0;
        
        //        [tabBarButton setBackgroundImage:[UIImage imageNamed:@"paizhao"] forState:UIControlStateNormal];
        
        // Image
        [tabBarButton setImage:[UIImage imageNamed:@"paizhao"] forState:UIControlStateNormal];
        
        tabBarButton.alpha = 0.1f;
        
        [UIView animateWithDuration:0.25 animations:^{
            
            tabBarButton.alpha = 1.0f;
        } completion:^(BOOL finished) {
            
            
        }];
        
        
    }else{   // 0
        tabBarButton.tag = 1;
        
        //  不是 BackgroundImage
        //        [tabBarButton setBackgroundImage:[UIImage imageNamed:@"icon_launch"] forState:UIControlStateNormal];
        
        // Image
        
        //        [UIImage imageNamed:@"INTopic_publishBg"]
        
        [tabBarButton setImage:[UIImage imageNamed:@"icon_launch"] forState:UIControlStateNormal];
        
        tabBarButton.alpha = 0.1f;
        
        [UIView animateWithDuration:0.25 animations:^{
            
            tabBarButton.alpha = 1.0f;
            
        } completion:^(BOOL finished) {
            
            
        }];
    }
}

/*
- (void)presentPlusWithButton:(UIButton *)tabbarButton selectedIndex:(NSInteger) selectedIndex originalIndex:(NSInteger) originalIndex{
    
    
    // 可以使用Storyboard 或者 直接创建ViewController
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"QZPlus" bundle:nil];
    
    
    QZPlusViewController *viewController = storyboard.instantiateInitialViewController;
    
    
    CGRect frame = [tabbarButton convertRect:tabbarButton.frame toView:viewController.plusButton];
    
    
    viewController.view.backgroundColor = [UIColor clearColor];
    
    
    
    viewController.destinationFrame = frame;
    
    
    
    //    viewController.tabBarButton = tabbarButton;
    
    //    [rootViewController presentViewController:viewController animated:NO completion:^{
    //
    //        HCLog(@"presentViewController: # ...");
    //
    //    }];
    
    //    UIModalPresentationOverCurrentContext
    
    [self presentViewController:viewController animated:NO completion:^{
        
        HCLog(@"presentViewController: # ...");
        
    }];
    
} */

//- (void)handlePlusButton{
//
//   static NSTimeInterval duration = 0.5;
//   static NSTimeInterval delay = 0.0;
//
//    HCWeak
//
//    if (weakSelf.plusView.tag) {
//
//        // 隐藏
////        weakSelf.showEffectView = NO;
//
//        weakSelf.plusView.tag = 0;
//
//
//
//        [UIView animateWithDuration:duration animations:^{
//
////            tabBarButton.transform = CGAffineTransformIdentity;
////
////            weakSelf.effectView.alpha = 0.0f;
////
////            weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0, [UIScreen mainScreen].bounds.size.height);
//
//        } completion:^(BOOL finished) {
//
//
//
//        }];
//
//    }else{  // 显示
//
////        weakSelf.showEffectView = YES;
//
//        weakSelf.plusView.tag = 1;
//
//#warning 搞错了， CGAffineTransformMakeTranslation 是基于当前的基础上，进行处理 ，而不是最原始的位置
//        //                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, 0.0f);  // 0.0f
//
//
//        //                [UIView animateWithDuration:duration animations:^{
//        //
//        //                    weakSelf.effectView.alpha = 0.6f;
//        //
//        //#warning 搞错了， CGAffineTransformMakeTranslation 是基于当前的基础上，进行处理 ，而不是最原始的位置
//        ////                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, 0.0f);  // 0.0f
//        //
//        //                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, - [UIScreen mainScreen].bounds.size.height);
//        //
//        //                } completion:^(BOOL finished) {
//        //
//        //
//        //                }];
//
//        [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionCurveEaseIn animations:^{
//
////            tabBarButton.transform = CGAffineTransformMakeRotation(M_PI_4);
//
//            weakSelf.plusView.alpha = 0.7f;
//
//            weakSelf.plusView.transform = CGAffineTransformMakeTranslation(0.0, - [UIScreen mainScreen].bounds.size.height);
//
//        } completion:^(BOOL finished) {
//
//
//        }];
//
//
//
//    }
//
//}

#pragma mark - setters & getters

- (UIView *)plusView{
    
    /*
    if (!_plusView) {
        QZPlusView *plusView = [QZPlusView plusView];
        _plusView = plusView;
        
        // 设置 frame
        
        CGRect bounds = [UIScreen mainScreen].bounds;
        
        bounds.origin.y = bounds.size.height;
        
        //        bounds.size.height -= self.hc_tabBar.height;
        
        //        plusView.frame = bounds;
        
        plusView.frame = bounds;
        
        HCLog(@"plusView # plusView.frame=%@", NSStringFromCGRect(plusView.frame ));
        
        // 添加到 self.view (self --> TabBarController --> view)
        
#warning 遮挡住 TabBar 的效果
        //        [self.view addSubview:effectView];
        
        //        [self.view insertSubview:_effectView belowSubview:self.hc_tabBar];
        
        
        //        self.view addSubview:<#(UIView *)#>
        
        
        plusView.alpha = 0.0f; //  默认透明度为 0
        
        [self.view addSubview:plusView];
        
        plusView.backgroundColor = [UIColor colorForRandom];
        
    }
    
    return _plusView;
     
     */
    
    return nil; //
}

 /**
 *  @author HeroCao, 15-08-14 10:08:08
 *
 *  为NavigationController添加ChildViewController，纯代码的方式，必须首先给NavigationController添加ChildViewController
 *
 *  @param childController childController
 *  @param title           标题
 */
- (void)addChildViewControllerForNavigationController:(UIViewController *)childController title:(NSString *)title{
    
    // childController.title 相当于 childController.navigationItem.title = title 和 child.tabBarItem.title = title ;
    childController.title = title;
    
    // HCNavigationController
    HCNavigationController *navigationController = [[HCNavigationController alloc] init];
    
    [navigationController addChildViewController:childController];
    
    [self addChildViewController:navigationController];
    
//    HCLog(@"self.viewControllers.count=%ld, navigationController.topViewController=%@", self.viewControllers.count, navigationController.topViewController);
    
}


@end
