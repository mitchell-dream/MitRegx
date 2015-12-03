
#import <UIKit/UIKit.h>

/*
 MitRegexStateTypePhoneRight,    //手机号正确
 MitRegexStateTypePhoneMoreError,//手机号太多
 MitRegexStateTypePhoneLessError,//手机号太少
 MitRegexPhoneChatErrorTxt,      //手机格式错误
 MitRegexStateTypePsdRight,      //密码正确
 MitRegexStateTypePsdLessError,  //密码太少
 MitRegexStateTypePsdMoreError,  //密码太多
 MitRegexStateTypeChatError,     //编码格式错误
 */

/** 手机信息错误提示文本 */
UIKIT_EXTERN NSString * const MitRegexPhoneRightTxt;
UIKIT_EXTERN NSString * const MitRegexPhoneMoreErrorTxt;
UIKIT_EXTERN NSString * const MitRegexPhoneLessErrorTxt;
UIKIT_EXTERN NSString * const MitRegexPhoneChatErrorTxt;

/** 密码信息错误提示文本 */
UIKIT_EXTERN NSString * const MitRegexPsdRightTxt;
UIKIT_EXTERN NSString * const MitRegexPsdMoreErrorTxt;
UIKIT_EXTERN NSString * const MitRegexPsdLessErrorTxt;
UIKIT_EXTERN NSString * const MitRegexPsdChatErrorTxt;

/** 验证码 */
UIKIT_EXTERN NSString * const MitRegexCodeRightTxt;
UIKIT_EXTERN NSString * const MitRegexCodeErrorTxt;
UIKIT_EXTERN NSString * const MitRegexCodeChatErrorTxt;

/** 编码格式错误提示文本 */
UIKIT_EXTERN NSString * const MitRegexChatErrorTxt;
