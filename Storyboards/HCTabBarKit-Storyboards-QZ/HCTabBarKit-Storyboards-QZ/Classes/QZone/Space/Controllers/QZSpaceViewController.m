//
//  QZSpaceViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZSpaceViewController.h"
#import "BullB.h"
#import "User.h"

@interface QZSpaceViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *logoutBarButtonItem;

- (IBAction)didClickLogout:(UIBarButtonItem *)sender;

///  登入的用户
@property (nonatomic, strong) User *user;

@end

@implementation QZSpaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"User"];
    
    if (data)
        self.user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    
    // 不需要，因为进来就必须有权限的
//    self.logoutBarButtonItem.enabled = user.loginState;
}

#pragma mark - public methods
- (void)initialize{
    [super initialize];
    
    for (NSInteger i = 0; i < 300; i++) {
        BullB *bullB = [BullB bb];
        NSString *title =  [NSString stringWithFormat:@"%@", QZCellTitle];
        NSString *detail = [NSString stringWithFormat:@"%@\n行号：%ld", QZCellDetail, (i+1)];
        bullB.title = title;
        bullB.detail = detail;
        
        [self.dataset addObject:bullB];
    }
}

//- (void)viewDidAppear:(BOOL)animated{
//    
//    [super viewDidAppear:animated];
//    
//    NSLog(@"HCNavigationController # viewDidAppear: # ...");
//    
//    /*
//     
//     http://www.cocoachina.com/bbs/read.php?tid=244960
//     
//     目前已经解决！方案：在RootViewController的viewDidAppear中把self.navigationController.interactivePopGestureRecognizer.enabled = NO;并且在推出ChildViewController前调用
//     if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)])
//     {
//     self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//     self.navigationController.interactivePopGestureRecognizer.delegate = nil;
//     }即可实现自定义与返回手势不冲突且无BUG！
//     
//     */
//    
//    // 不行
//    
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//    
//    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]){
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
//    }
//    
//    //    self.tabBarController.hidesBottomBarWhenPushed = YES;
//    
//    //    self.tableView setse
//    
//}

#pragma mark - Actions

- (IBAction)didClickLogout:(UIBarButtonItem *)sender {
    
    // 注销
    
    self.user.loginState = NO;
    
//    [[NSUserDefaults standardUserDefaults] setObject:self.user forKey:@"User"];
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    // 注销之后，跳转到 首页
    
    HCTabBarController *hc_tabBarController = (HCTabBarController *)self.tabBarController;
    
    [hc_tabBarController.hc_tabBar switchTabWithIndex:0];
    
//    [hc_tabBarController.hc_tabBar switchTabWithIndex:2];
    
    
}

#pragma mark - setters & getters 

//- (User *)user{
//    
//    if (!_user) {
//        _user =
//    }
//    
//    return _user;
//}

@end
