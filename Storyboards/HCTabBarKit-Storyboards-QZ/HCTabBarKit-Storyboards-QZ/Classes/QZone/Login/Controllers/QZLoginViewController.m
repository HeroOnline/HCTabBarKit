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
    
    // reason: 'Attempt to insert non-property list object <User: 0x174017520> for key User'
    
    // 包含非对象 属性，例如 BOOL
    
    // http://blog.csdn.net/miaocuilin/article/details/40183663
    
    /*
     这种错误的原因是插入了不识别的数据类型，NSUserDefaults支持的数据类型有NSString、 NSNumber、NSDate、 NSArray、NSDictionary、BOOL、NSInteger、NSFloat等系统定义的数据类型。
     
     自定义的类型需要转成NSData再存入。
     
     ===============================================
     
     我原来认为NSUserDefaults存不了数组，又换成了字典，但是还是报错，最后求助网友大神解决了，是我里边的数据结构有"<null>"，而NSUserDefaults是不能被成功解析并存入的，所有在存入之前需要将里边的"<null>"改成""即可。
     */
    
    // NSCoding
    
//    [[NSUserDefaults standardUserDefaults] setObject:self.user forKey:@"User"];
    
//    [[NSUserDefaults standardUserDefaults] setObject:@(self.user.loginState) forKey:@"loginState"];
    
    // 使用  NSKeyedArchiver  archivedDataWithRootObject:  将 NSObject －－》 NSData
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    HCWeak
    
    [self dismissViewControllerAnimated:YES completion:^{
    
        // 跳转到目标Tab
        
//        weakSelf.tabIndex
        
        NSLog(@"weakSelf.tabBarController=%@, weakSelf.tabIndex=%ld, weakSelf.hc_tabBarController=%@", weakSelf.tabBarController, weakSelf.tabIndex, weakSelf.hc_tabBarController);
        
        
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
