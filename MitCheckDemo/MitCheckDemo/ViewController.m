//
//  ViewController.m
//  MitCheckDemo
//
//  Created by MENGCHEN on 15/12/3.
//  Copyright © 2015年 MENGCHEN. All rights reserved.
//




#import "ViewController.h"
#import "MitRegex/MitRegex.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234").validatePhone(@"1594128111x").validatePsd(@"12345");
    } MitValue:^(MitRegexStateType type, NSString *str,BOOL isPassed) {
        NSLog(@"是否通过校验 = %d 状态码 = %ld, 状态详细 = %@",isPassed,type,str);
    }];
    
    [NSObject mit_makeMitRegexMaker:^(MitRegexMaker *maker) {
        maker.validateCodeNumber(@"1234").validatePhone(@"15941282556").validatePsd(@"123456");
    } MitValue:^(MitRegexStateType type, NSString *str,BOOL isPassed) {
        NSLog(@"是否通过校验 = %d 状态码 = %ld, 状态详细 = %@",isPassed,type,str);
    }];
}


@end
