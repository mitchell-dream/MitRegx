//
//  NSObject+mitRegexMaker.m
//  ReactiveCocoaDe
//
//  Created by MENGCHEN on 15/11/15.
//  Copyright © 2015年 MENGCHEN. All rights reserved.
//

#import "NSObject+mitRegexMaker.h"

@implementation NSObject (mitRegexMaker)


#pragma mark ------------------ 获取处理类 ------------------
+ (MitRegexMaker*)mit_makeMitRegexMaker:(void (^)(MitRegexMaker *))block{
    MitRegexMaker*maker = [[MitRegexMaker alloc]init];
    block(maker);
    return maker;
}

#pragma mark ------------------ 获取状态+状态码信息 ------------------
+(void)mit_makeMitRegexMaker:(void (^)(MitRegexMaker *))block MitValue:(void (^)(MitRegexStateType,NSString *,BOOL isPassed))mitBlock{
    MitRegexMaker*maker = [[MitRegexMaker alloc]init];
    block(maker);
    mitBlock(maker.status,maker.statusString,maker.isPassed);
}

#pragma mark ------------------ 获取状态 ------------------
+ (MitRegexStateType)mit_makeMitRegexStatusMaker:(void (^)(MitRegexMaker *))block{
    MitRegexMaker*maker = [[MitRegexMaker alloc]init];
    block(maker);
    return maker.status;
}
#pragma mark ------------------ 获取状态码信息 ------------------
+ (NSString *)mit_makeMitRegexStatusStringMaker:(void (^)(MitRegexMaker *))block{
    MitRegexMaker*maker = [[MitRegexMaker alloc]init];
    block(maker);
    return maker.statusString;
}
@end
