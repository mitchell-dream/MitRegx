//
//  MitRegex.m
//  ReactiveCocoaDe
//
//  Created by MENGCHEN on 15/11/15.
//  Copyright © 2015年 MENGCHEN. All rights reserved.
//

#import "MitRegexMaker.h"

@implementation MitRegexMaker

/** 初始化 */
- (instancetype)init{
    if (self = [super init]) {
        _passed = YES;
    }
    return self;
}


#pragma mark 校验手机号 格式
- (MitRegexMaker *(^)(NSString *))validatePhone{
    return ^(NSString *str){
        if (_passed) {
            _status = [self regexPhoneNumber:str];
            if (_status == MitRegexStateTypePhoneRight ) {
                _passed =YES;
            }else{
                _passed = NO;
            }
        }
        return self;
    };
}

#pragma mark 校验密码 格式
- (MitRegexMaker *(^)(NSString *))validatePsd{
    return ^(NSString *str){
        if (_passed) {
            _status = [self regexPsdNumber:str];
            if (_status == MitRegexStateTypePsdRight ) {
                _passed =YES;
            }else{
                _passed = NO;
            }
        }
        return self;
    };
}
#pragma mark 校验验证码 格式
- (MitRegexMaker *(^)(NSString *))validateCodeNumber{
    return ^(NSString *str){
        if (_passed) {
            _status = [self regexCodeNumber:str];
            if (_status == MitRegexStateTypeCodeRight ) {
                _passed =YES;
            }else{
                _passed = NO;
            }
        }
        return self;
    };
}

#pragma mark ------------------ 手机号 ------------------
- (MitRegexStateType)regexPhoneNumber:(NSString*)phoneNum{
    NSString * regex = @"^[1][3758][0-9]{9}$";
    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isMatch = [pred evaluateWithObject:phoneNum];
    if(isMatch){
        [self changeStatusString:MitRegexStateTypePhoneRight];
        return MitRegexStateTypePhoneRight;
    }
    NSInteger length = phoneNum.length ;
    if(length < 11){
        [self changeStatusString:MitRegexStateTypePhoneLessError];
        return MitRegexStateTypePhoneLessError;
    }else if(length > 11){
        [self changeStatusString:MitRegexStateTypePhoneMoreError];
        return MitRegexStateTypePhoneMoreError;
    }
    [self changeStatusString:MitRegexStateTypePhoneChatError];
    return MitRegexStateTypePhoneChatError;
}





#pragma mark ------------------ 密码 ------------------
- (MitRegexStateType)regexPsdNumber:(NSString*)psd{
    //    NSString * regex = @"\\w{6,26}";
    //    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    //    if( [pred evaluateWithObject:self]){
    //        return RegexStateRight;
    //    }
    NSUInteger length = psd.length ;
    if(length < 6){
        [self changeStatusString:MitRegexStateTypePsdLessError];
        return MitRegexStateTypePsdLessError;
    }else if(length >= 25){
        [self changeStatusString:MitRegexStateTypePsdMoreError];
        return MitRegexStateTypePsdMoreError;
    }
    [self changeStatusString:MitRegexStateTypePsdRight];

    return MitRegexStateTypePsdRight;
}

#pragma mark ------------------ 验证码 ------------------
- (MitRegexStateType)regexCodeNumber:(NSString*)str{
    NSString * regex = @"^[0-9]{4}$";
    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isMatch = [pred evaluateWithObject:str];
    isMatch? [self changeStatusString:MitRegexStateTypeCodeRight]:[self changeStatusString:MitRegexStateTypeCodeError];
    return isMatch? MitRegexStateTypeCodeRight:MitRegexStateTypeCodeChatError;
}

- (void)changeStatusString:(MitRegexStateType)status{
    switch (status) {
        case MitRegexStateTypePhoneRight:
            self.statusString = MitRegexPhoneRightTxt;
            break;
        case MitRegexStateTypePhoneLessError:
            self.statusString = MitRegexPhoneLessErrorTxt;

            break;
        case MitRegexStateTypePhoneMoreError:
            self.statusString = MitRegexPhoneMoreErrorTxt;

            break;
        case MitRegexStateTypePsdRight:
            self.statusString = MitRegexPsdRightTxt;

            break;
        case MitRegexStateTypePsdLessError:
            self.statusString = MitRegexPsdLessErrorTxt;

            break;
        case MitRegexStateTypePsdMoreError:
            self.statusString = MitRegexPsdMoreErrorTxt;

            break;
        case MitRegexStateTypeCodeError:
            self.statusString = MitRegexCodeErrorTxt;

            break;
        case MitRegexStateTypeCodeRight:
            self.statusString = MitRegexCodeRightTxt;
            break;
        case MitRegexStateTypeChatError:
            self.statusString = MitRegexChatErrorTxt;
            break;
        case MitRegexStateTypePhoneChatError:
            self.statusString = MitRegexPhoneChatErrorTxt;
            break;
        case MitRegexStateTypeCodeChatError:
            self.statusString = MitRegexCodeChatErrorTxt;
            break;
        case MitRegexStateTypePsdChatError:
            self.statusString = MitRegexPsdChatErrorTxt;
            break;
    }
}


@end
