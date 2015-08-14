//
//  WBBaseDetailViewController.h
//  HCTabBarKit
//
//  Created by HeroCao on 15/8/7.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BullB;

/// 这里为了方便，实际开发过程中，尽量不要使用继承，也就是封装父类控制器
@interface WBBaseDetailViewController : UIViewController

/**
 *  牛B的数据模型
 *
 *  @author HeroCao, 15-08-07 13:08:51
 */
@property (nonatomic, strong) BullB *bullB;

@property (nonatomic, strong) NSAttributedString *attributedString;

@end
