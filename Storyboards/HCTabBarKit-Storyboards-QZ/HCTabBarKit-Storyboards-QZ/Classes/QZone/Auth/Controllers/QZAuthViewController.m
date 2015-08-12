//
//  QZAuthViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZAuthViewController.h"
#import "BullB.h"
#import "QZAuthDetailViewController.h"

@interface QZAuthViewController ()


@end

@implementation QZAuthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//#pragma mark - prepareForSegue:sender:

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    [super prepareForSegue:segue sender:sender];
//    
//    NSLog(@"prepareForSegue: # segue.destinationViewController=%@", segue.destinationViewController);
//    
//    if ([segue.destinationViewController isKindOfClass:[QZAuthDetailViewController class]]) {
//        
//        QZAuthDetailViewController *vc = segue.destinationViewController;
//        
//        vc.bullB = self.selectedBullB;
//        
//    }
//}

#pragma mark - public methods
- (void)initialize{
    [super initialize];
    
    for (NSInteger i = 0; i < 200; i++) {
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
//    
//    /*
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
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//    
//    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]){
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
//    }
//    
////    self.tabBarController.hidesBottomBarWhenPushed = YES;
//    
//    //    self.tableView setse
//    
//}

@end
