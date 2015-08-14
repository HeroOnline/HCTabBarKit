//
//  WBPlusViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBPlusViewController.h"

static NSTimeInterval const QZPlusAnimationDuration = 0.25;

@interface WBPlusViewController ()

- (IBAction)didClickPlus:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WBPlusViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // 默认旋转 －45度
    self.plusButton.transform = CGAffineTransformMakeRotation(-M_PI_4);
    self.textLabel.alpha = 0.0f;
    NSRange range = [QZCellDetail rangeOfString:@"HCTabBarKit"];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:QZCellDetail];
    [attributedString addAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:28.0f], NSForegroundColorAttributeName: [UIColor colorForRandom]} range:range];
    self.textLabel.attributedText = attributedString;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // 内存管理
    HCWeak
    
    [UIView animateWithDuration:QZPlusAnimationDuration animations:^{

        weakSelf.plusButton.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
        weakSelf.textLabel.alpha = 1.0f;
    }];
}

#pragma mark - Actions

- (IBAction)didClickPlus:(UIButton *)sender {
    
    [self dismissViewController];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewController];
}

#pragma mark private methods

/**
 *  dismissViewController
 *
 *  @author HeroCao, 15-08-06 09:08:41
 */
- (void)dismissViewController{
    // 内存管理
    HCWeak
    
    [UIView animateWithDuration:QZPlusAnimationDuration animations:^{
        
        weakSelf.plusButton.transform = CGAffineTransformMakeRotation(-M_PI_4);
        
    } completion:^(BOOL finished) {
        
        //不需要动画
        [weakSelf dismissViewControllerAnimated:NO completion:nil];
    }];
    
}
@end
