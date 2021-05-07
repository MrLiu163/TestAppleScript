//
//  Test.m
//  MarketCheckAndSendMail
//
//  Created by mrliu on 2020/12/25.
//

#import "Test.h"

@implementation Test

/** 测试数组传参方法 */
+ (void)testListParaMethod
{
    // 获取script类
    // id TestScript = objc_lookUpClass("TestScript");
    id TestScript = NSClassFromString(@"TestScript");
    // 通过SEL来调用script类方法
    SEL listParasSel = NSSelectorFromString(@"testMethodWithListParas:");
    if ([TestScript respondsToSelector:listParasSel]) {
        [TestScript performSelector:listParasSel withObject:@[@"first", @"second", @"third"]];
    }
}

/** 测试字典传参方法 */
+ (void)testDictParaMethod
{
    // 获取script类
    // id TestScript = objc_lookUpClass("TestScript");
    id TestScript = NSClassFromString(@"TestScript");
    // 通过SEL来调用script类方法
    SEL dictParasSel = NSSelectorFromString(@"testMethodWithDictParas:");
    if ([TestScript respondsToSelector:dictParasSel]) {
        [TestScript performSelector:dictParasSel withObject:@{@"theName" : @"mike", @"theAge" : @"18"}];
    }
}

/** 测试无参数方法 */
+ (void)testNOParaMethod
{
    // 获取script类
    // id TestScript = objc_lookUpClass("TestScript");
    id TestScript = NSClassFromString(@"TestScript");
    // 通过SEL来调用script类方法
    SEL noParasSel = NSSelectorFromString(@"testMethodWithNoParas");
    if ([TestScript respondsToSelector:noParasSel]) {
        [TestScript performSelector:noParasSel];
    }
}

/** 测试OC返回值 */
+ (NSString *)testRetrunParaMethod
{
    return @"15";
}

@end
