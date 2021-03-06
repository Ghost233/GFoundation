//
//  NSStringExtensions.m
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import "NSStringExtensions.h"

#import "GTMBase64.h"
#import "NSDataExtensions.h"

@implementation NSString (NSStringExtensionsCustom)

- (BOOL)isValidateEmail
{
    NSString* emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate* emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

+ (BOOL)isValidateEmail:(NSString*)email;
{
    NSString* emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate* emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

- (BOOL)isValidateMobile
{
    NSString* phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate* phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [phoneTest evaluateWithObject:self];
}

+ (BOOL)isValidateMobile:(NSString*)mobile
{
    NSString* phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate* phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}

- (NSString*)descriptionCustom
{
    return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

- (NSData*)encodeBase64ToNSData
{
    return [[self dataUsingEncoding:NSUTF8StringEncoding] encodeBase64];
}

- (NSString*)encodeBase64
{
    return [[NSString alloc] initWithData:[self encodeBase64ToNSData]
                                 encoding:NSUTF8StringEncoding];
}

- (NSString*)decodeBase64
{
    return [self decodeBase64WithNSData:[self dataUsingEncoding:NSUTF8StringEncoding]];
}

- (NSString*)decodeBase64WithNSData:(NSData*)data
{
    return [[NSString alloc] initWithData:[data decodeBase64]
                                 encoding:NSUTF8StringEncoding];
}

+ (NSString *)hexStringFromString:(NSString *)string
{
    NSData *myD = [string dataUsingEncoding:NSUTF8StringEncoding];
    Byte *bytes = (Byte *)[myD bytes];
    //下面是Byte 转换为16进制。
    NSString *hexStr=@"";
    for(int i=0;i<[myD length];i++)
        
    {
        NSString *newHexStr = [NSString stringWithFormat:@"%x",bytes[i]&0xff];///16进制数
        
        if([newHexStr length]==1)
            
            hexStr = [NSString stringWithFormat:@"%@0%@",hexStr,newHexStr];
        
        else
            
            hexStr = [NSString stringWithFormat:@"%@%@",hexStr,newHexStr]; 
    } 
    return hexStr; 
}

- (NSString *)hexString
{
    NSData *myD = [self dataUsingEncoding:NSUTF8StringEncoding];
    Byte *bytes = (Byte *)[myD bytes];
    //下面是Byte 转换为16进制。
    NSString *hexStr=@"";
    for(int i=0;i<[myD length];i++)
        
    {
        NSString *newHexStr = [NSString stringWithFormat:@"%x",bytes[i]&0xff];///16进制数
        
        if([newHexStr length]==1)
            
            hexStr = [NSString stringWithFormat:@"%@0%@",hexStr,newHexStr];
        
        else
            
            hexStr = [NSString stringWithFormat:@"%@%@",hexStr,newHexStr];
    }
    return hexStr;
}

+ (NSString*)randomHexStringWithLength:(int)length
{
    NSMutableString* tempString = [@"" mutableCopy];
    
    for (int i = 0 ; i < length ; ++i)
    {
        int value = arc4random() % 16;
        if (value < 10) [tempString appendFormat:@"%d", value];
        else [tempString appendFormat:@"%c", 'A' + value];
    }
    
    return tempString;
}

+ (NSString*)randomStringWithLength:(int)length
{
    NSMutableString* tempString = [@"" mutableCopy];
    
    for (int i = 0 ; i < length ; ++i)
    {
        int value = arc4random() % 62;
        if (value < 10) [tempString appendFormat:@"%d", value];
        else if (value < 36) [tempString appendFormat:@"%c", 'A' + value - 10];
        else [tempString appendFormat:@"%c", 'a' + value - 36];
    }
    
    return tempString;
}

+ (NSDictionary*)dictionaryWithJsonString:(NSString*)jsonString
{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    return dic;
}

- (NSDictionary*)dictionaryWithJsonString
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    return dic;
}

@end
