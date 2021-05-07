//
//  Test.h
//  MarketCheckAndSendMail
//
//  Created by mrliu on 2020/12/25.
//

// 测试OC和script互相调用

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject

/** 测试数组传参方法 */
+ (void)testListParaMethod;

/** 测试字典传参方法 */
+ (void)testDictParaMethod;

/** 测试无参数方法 */
+ (void)testNOParaMethod;

/** 测试OC返回值 */
+ (NSString *)testRetrunParaMethod;

@end

NS_ASSUME_NONNULL_END
