//
//  QZAtViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZAtViewController.h"
#import "BullB.h"

@interface QZAtViewController ()

@end

@implementation QZAtViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - public methods 
- (void)initialize{
    [super initialize];
    
    for (NSInteger i = 0; i < 50; i++) {
        BullB *bullB = [BullB bb];
        NSString *title =  [NSString stringWithFormat:@"%@", QZCellTitle];
        NSString *detail = [NSString stringWithFormat:@"%@\n行号：%ld", QZCellDetail, (i+1)];
        bullB.title = title;
        bullB.detail = detail;
        
        [self.dataset addObject:bullB];
    }
}

@end
