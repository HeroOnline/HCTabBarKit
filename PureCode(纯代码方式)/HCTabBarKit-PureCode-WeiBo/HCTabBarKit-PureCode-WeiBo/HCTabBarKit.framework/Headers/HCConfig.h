//
//  HCConfig.h
//  HCTabBarKit
//
//  Created by HeroCao, heroonlinecao@gmail.com on 15/8/2.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#ifndef HCTabBar_HCConfig_h
#define HCTabBar_HCConfig_h


#define HCWeak __weak typeof(self) weakSelf = self;

#define HCStrong __strong typeof(self) strongSelf = weakSelf;

#ifdef HCDEBUG
#define HCLog(format, ...) NSLog(@"%s(%d): " format, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define HCLog(format, ...)
#endif


#endif
