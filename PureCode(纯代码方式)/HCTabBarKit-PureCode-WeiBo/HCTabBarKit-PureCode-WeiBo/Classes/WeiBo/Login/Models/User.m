//
//  User.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/10.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "User.h"

@implementation User

// -[User encodeWithCoder:]: unrecognized selector sent to instance 0x17400a690'

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super init]) {
        
       self.loginState = [[aDecoder decodeObjectForKey:@"loginState"] boolValue];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
   [aCoder encodeObject:@(self.loginState) forKey:@"loginState"];
}

+ (instancetype)user {
    return [[self alloc] init];
}

@end
