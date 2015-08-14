//
//  QZLoginViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/10.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZLoginViewController.h"
#import "User.h"

@interface QZLoginViewController ()

@property (nonatomic, strong) User *user;

- (IBAction)didClickCancel:(UIBarButtonItem *)sender;
- (IBAction)didClickLogin:(UIButton *)sender;

@end

@implementation QZLoginViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Actions

- (IBAction)didClickCancel:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didClickLogin:(UIButton *)sender {
    self.user.loginState = YES;
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    // 内存管理
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
