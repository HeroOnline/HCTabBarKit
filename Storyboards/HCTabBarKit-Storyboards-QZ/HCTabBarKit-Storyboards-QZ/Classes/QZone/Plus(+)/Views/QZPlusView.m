//
//  QZPlusView.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZPlusView.h"
#import "UIView+HCTabBarKit.h"

@interface QZPlusView ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textLabelTopLayoutConstraint;

/// 是否正在展现
@property (nonatomic, getter=isShowing) BOOL showing;
@property (nonatomic, getter=isExecuting) BOOL executing;
@property (nonatomic, getter=isOrientationPortrait) BOOL orientationPortrait;

@end

@implementation QZPlusView

#pragma mark - lifecycle

- (void)awakeFromNib{
    [super awakeFromNib];
    
    self.textLabel.text = QZCellDetail;
    
    self.orientationPortrait = [UIView isOrientationPortrait];
}

// 可能会被调用多次
- (void)awakeFromNib222{
    [super awakeFromNib];
    
    HCLog(@"awakeFromNib # ...");
    
    self.textLabel.text = QZCellDetail;
    
     HCLog(@"awakeFromNib # 11 # self.frame=%@, self.isShowing=%d", NSStringFromCGRect(self.frame), self.isShowing);
    
    // 默认在屏幕上方位置，显示不了
    // 由于(void)awakeFromNib 会被多次调用
//    self.transform = CGAffineTransformMakeTranslation(0, -[UIScreen mainScreen].bounds.size.height);
    
    if (0 == self.y) {
        
        self.transform = CGAffineTransformMakeTranslation(0, -[UIScreen mainScreen].bounds.size.height);
    }
    
    self.hidden = YES;
    
    HCLog(@"awakeFromNib # 22 # self.frame=%@, self.isShowing=%d", NSStringFromCGRect(self.frame), self.isShowing);
    
//    UIView
}

//  首先调用 initWithCoder －－》 awakeFromNib ， 不会调用 initWithFrame
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super initWithCoder:aDecoder]) {
        
        HCLog(@"initWithCoder # ...");
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
         HCLog(@"initWithFrame # ...");
    }
    
    return self;
}

#pragma mark - layoutSubviews

- (void)layoutSubviews{
    [super layoutSubviews];
    
    // 需要解决横屏和竖屏问题
    
    // 横屏： layoutSubviews # self.isShowing=1, self.frame={{0, 0}, {736, 414}}

    // 竖屏： layoutSubviews # self.isShowing=1, self.frame={{0, 0}, {414, 736}}
     HCLog(@"layoutSubviews # self.isShowing=%d, self.frame=%@", self.isShowing, NSStringFromCGRect(self.frame));
    
    if(!(([UIView isOrientationPortrait] && self.isOrientationPortrait) || (![UIView isOrientationPortrait] && !self.isOrientationPortrait))){
        
        [self perform];
    }
    
    self.orientationPortrait = [UIView isOrientationPortrait];
    
    
    // 横屏和竖屏
    
//    if (self.isExecuting) {
//        [self perform];
//    }

    /*
    
    UIInterfaceOrientation interfaceOrientation = [UIApplication sharedApplication].statusBarOrientation;
    
    CGRect bounds = [UIScreen mainScreen].bounds;
    
    if (UIInterfaceOrientationPortrait == interfaceOrientation || UIInterfaceOrientationPortraitUpsideDown == interfaceOrientation) {
        
       
        // 竖屏 , 会调用多次
        HCLog(@"竖屏 # self.frame=%@, bounds.size.width=%f,bounds.size.height=%f", NSStringFromCGRect(self.frame),  bounds.size.width,bounds.size.height);
        
         // 需要解决横屏和竖屏问题 ,不行 ，位置不对
//        if (self.width != bounds.size.width) {
//            self.width = bounds.size.width;
//        }
//        
//        if (self.height != bounds.size.height) {
//            self.height = bounds.size.height;
//        }
        
        if (self.isExecuting) {
            [self perform];
        }

        
    }else if(UIInterfaceOrientationLandscapeLeft == interfaceOrientation || UIInterfaceOrientationLandscapeRight == interfaceOrientation){
        
        // 横屏， 会调用多次
        
         HCLog(@"横屏 # self.frame=%@, bounds.size.width=%f,bounds.size.height=%f", NSStringFromCGRect(self.frame),  bounds.size.width,bounds.size.height);
        
         // 需要解决横屏和竖屏问题 , 不行 ， 位置不对
//        if (self.width != bounds.size.width) {
//            self.width = bounds.size.width;
//        }
//        
//        if (self.height != bounds.size.height) {
//            self.height = bounds.size.height;
//        }
        
        if (self.isExecuting) {
            [self perform];
        }
    }
     
     */
    
}


#pragma mark - touchesBegan

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    HCLog(@"touchesBegan: # ...");
    
    [self perform];
}

#pragma mark - public methods 

+ (instancetype)plusView{
    return [[[NSBundle mainBundle] loadNibNamed:@"QZPlusView" owner:nil options:nil] lastObject];
}

/**
 *  perform
 *
 *  @author HeroCao, 15-08-06 17:08:08
 */
- (void)perform22{
    
    HCLog(@"perform # self.isShowing=%d, self.frame=%@", self.isShowing, NSStringFromCGRect(self.frame));
    
    static NSTimeInterval duration = 0.5;
    static NSTimeInterval delay = 0.2;
    
    HCWeak
    
    if (self.isShowing) {  // 正在显示，点击之后隐藏
        self.showing = NO;
        
        // 需要动画
        weakSelf.textLabelTopLayoutConstraint.constant = 0;
        weakSelf.alpha = 0.0;
        weakSelf.hidden = YES;
        // 在屏幕上方，
        weakSelf.transform = CGAffineTransformMakeTranslation(0, -[UIScreen mainScreen].bounds.size.height);
        
    }else{ // 正在隐藏，点击之后显示
        self.showing = YES;
        
         HCLog(@"perform # 22 # self.isShowing=%d, self.frame=%@", self.isShowing, NSStringFromCGRect(self.frame));
        
//        self.transform = CGAffineTransformMakeTranslation(0, 0);
        self.hidden = NO;
        self.alpha = 0.9f;
        
         HCLog(@"perform # 33 # self.isShowing=%d, self.frame=%@", self.isShowing, NSStringFromCGRect(self.frame));
        
        // UITextLabel从底部上来
        [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionCurveEaseIn animations:^{
            
//            weakSelf.textLabelTopLayoutConstraint.constant = -([UIScreen mainScreen].bounds.size.height - 50.0);
        } completion:^(BOOL finished) {
            
            HCLog(@"显示完成 # weakSelf.frame=%@, weakSelf.isShowing=%d", NSStringFromCGRect(weakSelf.frame), weakSelf.isShowing);
            
        }];
    }
}

/**
 *  perform
 *
 *  @author HeroCao, 15-08-06 17:08:08
 */
- (void)perform{
    
     HCLog(@"perform # self.isShowing=%d, self.frame=%@", self.isShowing, NSStringFromCGRect(self.frame));
    
    static NSTimeInterval duration = 1.0;   // 0.5
    static NSTimeInterval delay = 0.2;
    
    // 内存管理
    HCWeak
    
    if (self.isShowing) {
        
        // 隐藏
        //        weakSelf.showEffectView = NO;
        
//        weakSelf.plusView.tag = 0;
        
        self.showing = NO;
        self.executing = YES;
        
        // 禁止用户界面交互
        self.userInteractionEnabled = NO;
        
//        weakSelf.textLabel.transform = CGAffineTransformIdentity;
        
//        self.textLabelTopLayoutConstraint.constant = -([UIScreen mainScreen].bounds.size.height - 50.0);
        
        self.textLabelTopLayoutConstraint.constant = 0;
        
        [UIView animateWithDuration:duration animations:^{
            
//            weakSelf.alpha = 0.0;
//            weakSelf.layer.opacity = 0.0;
            
//            weakSelf.textLabel.transform = CGAffineTransformMakeTranslation(0, [UIScreen mainScreen].bounds.size.height);
            
//            weakSelf.textLabel.transform = CGAffineTransformIdentity;
            
#warning 必须调用目标动画View的  layoutIfNeeded 方法，否则无动画效果
            
            [weakSelf.textLabel layoutIfNeeded];
            
        } completion:^(BOOL finished) {
            
            weakSelf.alpha = 0.0;
            
//            weakSelf.transform = CGAffineTransformMakeTranslation(0.0, [UIScreen mainScreen].bounds.size.height);
            
            
            weakSelf.transform = CGAffineTransformIdentity;
            
//            weakSelf.showing = NO;
            
            weakSelf.executing = NO;  // 执行完毕
            
            weakSelf.userInteractionEnabled = YES;
            
        }];
        
//        [UIView animateWithDuration:duration animations:^{
//            
//            //            tabBarButton.transform = CGAffineTransformIdentity;
//            //
//            //            weakSelf.effectView.alpha = 0.0f;
//            //
//            //            weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0, [UIScreen mainScreen].bounds.size.height);
//            
//        } completion:^(BOOL finished) {
//            
//            
//            weakSelf.transform = CGAffineTransformMakeTranslation(0.0, [UIScreen mainScreen].bounds.size.height);
//            
//        }];
        
    }else{  // 显示
        
        //        weakSelf.showEffectView = YES;
        
//        weakSelf.plusView.tag = 1;
        
        self.showing = YES;
        
        self.executing = YES;
        
        //  禁止用户界面交互
        self.userInteractionEnabled = NO;
        
#warning 搞错了， CGAffineTransformMakeTranslation 是基于当前的基础上，进行处理 ，而不是最原始的位置
        //                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, 0.0f);  // 0.0f
        
        
        //                [UIView animateWithDuration:duration animations:^{
        //
        //                    weakSelf.effectView.alpha = 0.6f;
        //
        //#warning 搞错了， CGAffineTransformMakeTranslation 是基于当前的基础上，进行处理 ，而不是最原始的位置
        ////                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, 0.0f);  // 0.0f
        //
        //                    weakSelf.effectView.transform = CGAffineTransformMakeTranslation(0.0f, - [UIScreen mainScreen].bounds.size.height);
        //
        //                } completion:^(BOOL finished) {
        //
        //
        //                }];
        
         weakSelf.transform = CGAffineTransformMakeTranslation(0.0, - [UIScreen mainScreen].bounds.size.height);
        
         weakSelf.alpha = 0.92f;
//        
//       [UIView animateWithDuration:duration animations:^{
//           
//          
//           
//          
//           
//           
//           
//       } completion:^(BOOL finished) {
//           
        
            self.textLabelTopLayoutConstraint.constant = -([UIScreen mainScreen].bounds.size.height - 50.0);
           
           [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionCurveEaseIn animations:^{
               
               //            tabBarButton.transform = CGAffineTransformMakeRotation(M_PI_4);
               
               //            weakSelf.plusView.alpha = 0.7f;
               
               //            self.alpha = 0.7f;
               
               //            weakSelf.plusView.transform = CGAffineTransformMakeTranslation(0.0, - [UIScreen mainScreen].bounds.size.height);
               
               
//               weakSelf.textLabel.transform = CGAffineTransformMakeTranslation(0, 50.0);
               
               // 不需要在动画的 Block 中，只需要  [weakSelf.textLabel layoutIfNeeded]; 就可以了 ， 修改 约束的值写在动画Block 外面
//                weakSelf.textLabelTopLayoutConstraint.constant = -([UIScreen mainScreen].bounds.size.height - 50.0);
               
               
               [weakSelf.textLabel layoutIfNeeded];
               
               
           } completion:^(BOOL finished) {
               
               //            weakSelf.alpha = 0.8f;
               //
               //            weakSelf.transform = CGAffineTransformMakeTranslation(0.0, - [UIScreen mainScreen].bounds.size.height);
               
               
//               weakSelf.showing = YES;
               
               weakSelf.executing = NO; // 执行完毕
               
               weakSelf.userInteractionEnabled = YES;
               
           }];
           
//       }];
        
        
        
    }
    
}

@end
