//
//  WBLoginViewController.m
//  HCTabBarKit-PureCode-WeiBo
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBLoginViewController.h"

@interface WBLoginViewController ()

@property (nonatomic, strong) User *user;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)didClickCancel:(UIBarButtonItem *)sender;
- (IBAction)didClickLogin:(UIBarButtonItem *)sender;

@end

@implementation WBLoginViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSRange range = [QZCellDetail rangeOfString:@"HCTabBarKit"];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:QZCellDetail];
    [attributedString addAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:28.0f], NSForegroundColorAttributeName: [UIColor colorForRandom]} range:range];
    self.textLabel.attributedText = attributedString;
}

#pragma mark - Actions

- (IBAction)didClickCancel:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didClickLogin:(UIBarButtonItem *)sender {
    
    self.user.loginState = YES;  // 标记登录状态
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    HCWeak
    
    [self dismissViewControllerAnimated:YES completion:^{
        
        // 跳转到目标Tab
        [weakSelf.hc_tabBarController.hc_tabBar switchTabWithIndex:weakSelf.tabIndex];
        
    }];
    
}

#pragma mark - setters & getters

- (User *)user{
    if (!_user) {
        _user = [User user];
    }
    return _user;
}

@end
