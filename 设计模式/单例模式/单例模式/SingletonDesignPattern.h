//
//  SingletonDesignPattern.h
//  单例模式
//
//  Created by 付杰 on 2019/4/29.
//  Copyright © 2019年 付杰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingletonDesignPattern : NSObject
+ (instancetype)shareInstance;
@end

NS_ASSUME_NONNULL_END
