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

#pragma mark - Actions

- (IBAction)didClickLogout:(UIBarButtonItem *)sender {
    
    // 注销
    self.user.loginState = NO;
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    // 注销之后，跳转到 首页
    HCTabBarController *hc_tabBarController = (HCTabBarController *)self.tabBarController;
    [hc_tabBarController.hc_tabBar switchTabWithIndex:0];  // 切换到首页
    
}

@end
