//
//  QZBaseTableViewController.h
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BullB;

/// 这里这是为了方便
@interface QZBaseTableViewController : UITableViewController

/// 数据集(BullB)
@property (nonatomic, copy) NSMutableArray *dataset;

- (void)initialize;

@end
