# MitRegx
校验手机号格式,密码格式,验证码格式
###第一种方式:
获取状态 
```
   NSInteger type =  [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] status];
    NSLog(@"%ld",type);
```
获取状态详细信息 
```
   NSString * typeStr = [[NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }] statusString];
    NSLog(@"%@",typeStr);
```
###第二种方式:
获取状态 
```
    /** */
    NSInteger type1 =  [NSObject mit_makeMitRegexStatusMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234");
    }];
    NSLog(@"%ld",type1);
```
获取详细信息
```
    NSString * typeStr1 = [NSObject mit_makeMitRegexStatusStringMaker:^(MitRegexMaker *maker) {
        maker.validatePsd(@"1234");
    }];
    NSLog(@"%@",typeStr1);
```
###一段代码,完成所有校验:
```
    /** 
     如果之前前面一个条件的校验未通过,将不会再进行下一个校验,返回的状态值也是未通过的校验值
     只有当校验条件全部通过的时候, isPassed 才为1.
     */
    [NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234").validatePhone(@"15941281116").validatePsd(@"123456");
    } MitValue:^(MitRegexStateType statusType, NSString * statusStr , BOOL isPassed) {
        NSLog(@"是否通过校验 = %d 状态码 = %ld, 状态详细 = %@",isPassed,statusType,statusStr);
    }];
```

