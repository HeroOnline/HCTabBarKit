//
//  User.h
//  HCTabBar
//
//  Created by HeroCao on 15/8/10.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

/////  登入状态，YES是登入，NO未登入
@property (nonatomic, getter = isLoginState) BOOL loginState;

///  登入状态，YES是登入，NO未登入
//@property (nonatomic, strong) NSNumber *loginState;

/**
 *  创建User实例对象
 *
 *  @author HeroCao, 15-08-10 10:08:14
 *
 *  @return 返回User实例对象
 */
+ (instancetype)user;

@end
