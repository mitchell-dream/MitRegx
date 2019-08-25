[中文](https://github.com/mcmengchen/MitRegx#mitregx-1)
# MitRegx
+ You can use MitRegx to verify many kinds of codes format. For example, phone code，secret code，verification code and Email code...

---
# Install
+ You can use cocoaPods:
```
pod 'MitRegx'
```
+ You can also download the zip and add the file called MitRegx to your project.
 
---
# How to use MitRegx
You can use MitRegx in the ways as follow:
### First Type:
+ Get state
```
   NSInteger type =  [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] status];
    NSLog(@"%ld",type);
```
+ Get state's detail message
```
   NSString * typeStr = [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] statusString];
    NSLog(@"%@",typeStr);
```
### Second Type
+  Get state 
```
    /** */
    NSInteger type1 =  [NSObject mit_makeMitRegexStatusMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }];
    NSLog(@"%ld",type1);
```
+ Get state's detail message
```
    NSString * typeStr1 = [NSObject mit_makeMitRegexStatusStringMaker:^(MitRegexMaker *maker) {
        maker.validatePsd(@"1234");
    }];
    NSLog(@"%@",typeStr1);
```
### You can verify many kinds of code in a word:
```
    /** 
    If a condition in front of the check failed, it will not continue the next check, and the state will be the last check result.
    Only if all of the condition check is passed, the value isPassed will set to one.
     */
    [NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234").validatePhone(@"15941281116").validatePsd(@"123456").validatePersonalId(@"2103021991071").validateEmail(@"41692292@roo.bo");
    } MitValue:^(MitRegexStateType statusType, NSString * statusStr , BOOL isPassed) {
        NSLog(@"if passed the check = %d StateCode = %ld, State detail Message = %@",isPassed,statusType,statusStr);
    }];
```


---


# MitRegx 
你可以使用 MitRegx 来校验手机号格式,密码格式,验证码格式和 Email 格式。

---
# 下载
+ 你可以使用 CocoaPods 来安装：
```
pod 'MitRegx'
```
+ 你也可以下载压缩包，然后将 MitRegx 文件夹添加到你的工程中使用

---
# 怎么样使用 MitRegx
### 第一种方式:
+ 获取状态 
```
   NSInteger type =  [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] status];
    NSLog(@"%ld",type);
```
+ 获取状态详细信息 
```
   NSString * typeStr = [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] statusString];
    NSLog(@"%@",typeStr);
```
### 第二种方式:
+ 获取状态 
```
    /** */
    NSInteger type1 =  [NSObject mit_makeMitRegexStatusMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }];
    NSLog(@"%ld",type1);
```
+ 获取详细信息
```
    NSString * typeStr1 = [NSObject mit_makeMitRegexStatusStringMaker:^(MitRegexMaker *maker) {
        maker.validatePsd(@"1234");
    }];
    NSLog(@"%@",typeStr1);
```
### 一段代码,完成所有校验:
```
    /** 
     如果之前前面一个条件的校验未通过,将不会再进行下一个校验,返回的状态值也是未通过的校验值
     只有当校验条件全部通过的时候, isPassed 才为1.
     */
    [NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234").validatePhone(@"15941281116").validatePsd(@"123456").validatePersonalId(@"2103021991071").validateEmail(@"41692292@roo.bo");
    } MitValue:^(MitRegexStateType statusType, NSString * statusStr , BOOL isPassed) {
        NSLog(@"是否通过校验 = %d 状态码 = %ld, 状态详细 = %@",isPassed,statusType,statusStr);
    }];
```

