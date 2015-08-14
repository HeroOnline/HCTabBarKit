//
//  WBProfileViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBProfileViewController.h"
#import "BullB.h"
#import "WBProfileDetailViewController.h"

@interface WBProfileViewController ()

///  登入的用户
@property (nonatomic, strong) User *user;

@end

@implementation WBProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"User"];
    
    if (data)
        self.user = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    // 右上角
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注销" style:UIBarButtonItemStylePlain target:self action:@selector(didClickLogout:)];
}

#pragma mark - public methods
- (void)initialize{
    [super initialize];
    
    for (NSInteger i = 0; i < 8; i++) {
        BullB *bullB = [BullB bb];
        NSString *category = [NSString stringWithFormat:@"Profile-Detail-%ld", i +1];
        NSString *title =  [NSString stringWithFormat:@"%@", QZCellTitle];
        NSString *detail = [NSString stringWithFormat:@"%@\n行号：%ld", QZCellDetail, (i+1)];
        bullB.title = title;
        bullB.detail = detail;
        bullB.category = category;
        [self.dataset addObject:bullB];
    }
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BullB *bullB = self.dataset[indexPath.row];
    bullB.index = indexPath.row;
    WBProfileDetailViewController *detailVC = [[WBProfileDetailViewController alloc] init];
    [detailVC setValue:bullB forKey:@"bullB"];
    [self.navigationController pushViewController:detailVC animated:YES];
}


#pragma mark - Actions

- (void)didClickLogout:(UIBarButtonItem *)sender {
    
    // 注销
    self.user.loginState = NO;
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:self.user] forKey:@"User"];
    
    // 注销之后，跳转到 首页
    
    HCTabBarController *hc_tabBarController = (HCTabBarController *)self.tabBarController;
    
    [hc_tabBarController.hc_tabBar switchTabWithIndex:0];
    
    //    [hc_tabBarController.hc_tabBar switchTabWithIndex:2];
    
}


@end
