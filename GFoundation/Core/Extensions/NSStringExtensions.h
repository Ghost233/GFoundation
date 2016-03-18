//
//  NSStringExtensions.h
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NSStringExtensionsCustom)

/**
 *  判断Email是否有效,只为字符串匹配检测
 *
 *  @return 判断结果
 */
- (BOOL)isValidateEmail;

/**
 *  判断Email是否有效,只为字符串匹配检测
 *
 *  @param email 需判断的字符串
 *
 *  @return 判断结果
 */
+ (BOOL)isValidateEmail:(NSString*)email;

/**
 *  判断手机号是否有效,只为字符串匹配检测
 *
 *  @return 判断结果
 */
- (BOOL)isValidateMobile;

/**
 *  判断手机号是否有效,只为字符串匹配检测
 *
 *  @param mobile 需判断的手机号
 *
 *  @return 判断结果
 */
+ (BOOL)isValidateMobile:(NSString*)mobile;

- (NSString*)descriptionCustom;

- (NSString*)encodeBase64;
- (NSData*)encodeBase64ToNSData;
- (NSString*)decodeBase64;
- (NSString*)decodeBase64WithNSData:(NSData*)data;
- (NSString *)hexString;
+ (NSString *)hexStringFromString:(NSString *)string;

@end
