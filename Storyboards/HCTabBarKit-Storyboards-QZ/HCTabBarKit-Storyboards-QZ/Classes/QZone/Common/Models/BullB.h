//
//  BullB.h
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 牛B 数据模型
@interface BullB : NSObject

/**
 *  标题
 *
 *  @author HeroCao, 15-08-06 11:08:44
 */
@property (nonatomic, copy) NSString *title;

/**
 *  详细
 *
 *  @author HeroCao, 15-08-06 11:08:53
 */
@property (nonatomic, copy) NSString *detail;

/**
 *  索引
 *
 *  @author HeroCao, 15-08-07 10:08:24
 */
@property (nonatomic) NSInteger index;

/**
 *  创建BullB(牛B数据模型)实例对象
 *
 *  @author HeroCao, 15-08-06 11:08:41
 *
 *  @return BullB(牛B数据模型)实例对象
 */
+ (instancetype)bb;

@end
