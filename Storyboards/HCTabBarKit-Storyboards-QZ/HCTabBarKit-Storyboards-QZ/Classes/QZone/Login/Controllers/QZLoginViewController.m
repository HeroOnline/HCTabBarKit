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
    
    NSLog(@"_user=%@, self.user=%@", _user, self.user);
    
    self.user.loginState = YES;
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    HCWeak
    
    [self dismissViewControllerAnimated:YES completion:^{
    
        // 跳转到目标Tab
        
        HCLog(@"weakSelf.tabBarController=%@, weakSelf.tabIndex=%ld, weakSelf.hc_tabBarController=%@", weakSelf.tabBarController, weakSelf.tabIndex, weakSelf.hc_tabBarController);
        
        
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
