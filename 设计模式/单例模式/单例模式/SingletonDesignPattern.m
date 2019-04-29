//
//  SingletonDesignPattern.m
//  单例模式
//
//  Created by 付杰 on 2019/4/29.
//  Copyright © 2019年 付杰. All rights reserved.
//

#import "SingletonDesignPattern.h"

@implementation SingletonDesignPattern
+ (instancetype)shareInstance
{
    static SingletonDesignPattern * _instance = nil ;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [[super allocWithZone:NULL] init];
        }
    });
    return (SingletonDesignPattern *)_instance;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [SingletonDesignPattern shareInstance];
}

-(id) copyWithZone:(NSZone *)zone
{
    return [SingletonDesignPattern shareInstance];
}

- (id)mutableCopy
{
    return [SingletonDesignPattern shareInstance];
}

-(id) mutableCopyWithZone:(NSZone *)zone
{
    return [SingletonDesignPattern shareInstance];
}

@end
