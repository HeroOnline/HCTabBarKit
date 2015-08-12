//
//  QZPlusViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZPlusViewController.h"
#import "UIView+HCTabBarKit.h"

static NSTimeInterval const QZPlusAnimationDuration = 0.25;

@interface QZPlusViewController ()

- (IBAction)didClickPlusButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *plusButtonWidthLayoutConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *plusButtonHeightLayoutConstraint;
@property (weak, nonatomic) IBOutlet UIButton *button01;

@end

@implementation QZPlusViewController

#pragma mark - Lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

    
//    HCLog(@"viewDidLoad: # self.plusButton.frame=%@, self.destinationFrame=%@, self.tabBarButton.frame=%@", NSStringFromCGRect(self.plusButton.frame), NSStringFromCGRect(self.destinationFrame), NSStringFromCGRect(self.tabBarButton.frame));
    
//    self.plusButton.frame = CGRectMake(10, 500, 50, 50);
    
//    self.plusButton.contentMode = UIViewContentModeScaleAspectFit;
    
    
//    self.plusButton.contentMode = UIViewContentModeScaleToFill;
    
    
//    self.plusButton.imageView.contentMode = UIViewContentModeScaleToFill;
    
    
//    // 设置
//    
//    self.modalPresentationStyle = UIModalPresentationCurrentContext;/*设置这个属性背景就是透明的，而不是黑色的了*/
//    
//    self.view.backgroundColor = [UIColor clearColor];
    
    
    
    
//    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    // Autolayout 之后，无效
//    self.plusButton.frame = CGRectMake(10, 500, 50, 50);
    
//    self.plusButtonHeightLayoutConstraint.constant = self.destinationFrame.size.height;
    
//    self.plusButtonWidthLayoutConstraint.constant = self.destinationFrame.size.width;
    
//    self.plusButton.contentMode = UIViewContentModeScaleAspectFit;
    
//    HCLog(@"viewWillAppear: # self.plusButton.frame=%@, self.destinationFrame=%@, self.tabBarButton.frame=%@", NSStringFromCGRect(self.plusButton.frame), NSStringFromCGRect(self.destinationFrame), NSStringFromCGRect(self.tabBarButton.frame));
    
    
}

//- (void)viewWillLayoutSubviews{
//    
//    [super viewWillLayoutSubviews];
//    
//     HCLog(@"viewWillLayoutSubviews: # self.plusButton.frame=%@, self.destinationFrame=%@, self.tabBarButton.frame=%@", NSStringFromCGRect(self.plusButton.frame), NSStringFromCGRect(self.destinationFrame), NSStringFromCGRect(self.tabBarButton.frame));
//    
//}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    
//     HCLog(@"viewDidAppear: # self.plusButton.frame=%@, self.destinationFrame=%@, self.tabBarButton.frame=%@", NSStringFromCGRect(self.plusButton.frame), NSStringFromCGRect(self.destinationFrame), NSStringFromCGRect(self.tabBarButton.frame));
    
    
    // 动画
//    [UIView initializeAnimationWithToRect:CGRectMake(20, 200, 100, 100) formRect:CGRectMake(0, 0, 100, 100) destinationView:self.button01 beginTime:0.25];
    
    
    // 内存管理
    HCWeak
    
    [UIView animateWithDuration:QZPlusAnimationDuration animations:^{
    
        // 旋转 135 度
        weakSelf.plusButton.transform = CGAffineTransformMakeRotation(M_PI_2 * 1.5);
        
    }];
    
}


- (IBAction)didClickPlusButton:(UIButton *)sender {
    
    HCLog(@"didClickPlusButton: # ...");
    
    [self dismissViewController];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    HCLog(@"touchesBegan: # ...");
    
    [self dismissViewController];
}

#pragma mark private methods 

/**
 *  dismissViewController
 *
 *  @author HeroCao, 15-08-06 09:08:41
 */
- (void)dismissViewController{
    
//    [UIView initializeAnimationWithToRect:CGRectMake(0, 0, 100, 100) formRect:CGRectMake(20, 200, 100, 100) destinationView:self.button01 beginTime:0.25];
    
    // 内存管理
    HCWeak
    
    [UIView animateWithDuration:QZPlusAnimationDuration animations:^{
        
        weakSelf.plusButton.transform = CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        //不需要动画
        [weakSelf dismissViewControllerAnimated:NO completion:nil];
    }];
    
}

@end
