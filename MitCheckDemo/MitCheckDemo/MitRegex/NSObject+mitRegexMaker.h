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

/** 状态码 + 状态码信息 (Block) */
+ (void)mit_makeMitRegexMaker:(void(^)(MitRegexMaker * maker))block MitValue:(void(^)(MitRegexStateType type,NSString*str,BOOL isPassed))mitBlock;

/** 返回状态码 */
+ (MitRegexStateType)mit_makeMitRegexStatusMaker:(void (^)(MitRegexMaker *))block;

/** 返回状态码所对应状态信息 */
+ (NSString *)mit_makeMitRegexStatusStringMaker:(void (^)(MitRegexMaker *))block;
@end
