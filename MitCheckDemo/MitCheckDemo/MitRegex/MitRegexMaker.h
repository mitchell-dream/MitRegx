//
//  MitRegex.h
//  ReactiveCocoaDe
//
//  Created by MENGCHEN on 15/11/15.
//  Copyright © 2015年 MENGCHEN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MitRegexConst.h"

/** 
    MitRegexStateType state type
 */
typedef NS_ENUM(NSUInteger, MitRegexStateType) {
    MitRegexStateTypePhoneRight,            //手机号正确
    MitRegexStateTypePhoneMoreError,        //手机号太多
    MitRegexStateTypePhoneLessError,        //手机号太少
    MitRegexStateTypePhoneChatError,        //手机编码格式错误
    MitRegexStateTypePsdRight,              //密码正确
    MitRegexStateTypePsdLessError,          //密码太少
    MitRegexStateTypePsdMoreError,          //密码太多
    MitRegexStateTypePsdChatError,          //密码格式错误
    MitRegexStateTypeCodeRight,             //验证码正确
    MitRegexStateTypeCodeError,             //验证码错误
    MitRegexStateTypeCodeChatError,         //验证码格式错误
    MitRegexStateTypeChatError,             //编码格式错误
    MitRegexStateTypePersonalIdRight,       //身份证正确
    MitRegexStateTypePersonalIdNumberError, //身份证输入数量错误
    MitRegexStateTypePersonalIdCodeError,   //身份证格式错误
    MitRegexStateTypeEmailError,            //邮箱格式错误
    MitRegexStateTypeEmailRight,            //邮箱格式正确
};



@interface MitRegexMaker : NSObject

/** 校验状态 */
@property(nonatomic, assign)MitRegexStateType status;

/** 返回状态文本 */
@property(nonatomic, strong)NSString * statusString;

/** 是否通过了校验 
    当连续校验多个值的时候会使用到此值.
 */
@property(nonatomic, getter=isPassed)BOOL passed;

/** 校验手机号 */
- (MitRegexMaker * (^)(NSString * str))validatePhone;

/** 校验密码 */
- (MitRegexMaker * (^)(NSString * str))validatePsd;

/** 校验验证码 */
- (MitRegexMaker * (^)(NSString * str))validateCodeNumber;

/** 验证身份证 */
- (MitRegexMaker * (^)(NSString * str))validatePersonalId;

/** 验证 email */
- (MitRegexMaker*(^)(NSString *))validateEmail;
@end
