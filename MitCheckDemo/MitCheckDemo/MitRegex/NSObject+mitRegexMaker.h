//
//  NSObject+mitRegexMaker.h
//  ReactiveCocoaDe
//
//  Created by MENGCHEN on 15/11/15.
//  Copyright © 2015年 MENGCHEN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MitRegexMaker.h"
@interface NSObject (mitRegexMaker)

/** 获取处理类 */
+ (MitRegexMaker*)mit_makeMitRegexMaker:(void(^)(MitRegexMaker * maker))block;

/**
 *  状态码 + 状态码信息 (Block)
 *  @param block    校验处理类
 *  @param mitBlock 返回状态值信息(只有当校验状态全部通过的时候, isPassed 才返回 Yes)
 */
+ (void)mit_makeMitRegexMaker:(void(^)(MitRegexMaker * maker))block MitValue:(void(^)(MitRegexStateType statusType,NSString * statusStr,BOOL isPassed))mitBlock;

/** 返回状态码 */
+ (MitRegexStateType)mit_makeMitRegexStatusMaker:(void (^)(MitRegexMaker * maker))block;

/** 返回状态码所对应状态信息 */
+ (NSString *)mit_makeMitRegexStatusStringMaker:(void (^)(MitRegexMaker * maker))block;
@end
