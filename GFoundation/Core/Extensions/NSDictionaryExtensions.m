//
//  NSDictionaryExtensions.m
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import "NSDictionaryExtensions.h"

#import "NSArrayExtensions.h"

@implementation NSDictionary (NSDictionaryExtensionsCustom)

+ (NSDictionary*)dictionaryWithContentsOfJSONURLString:(NSString*)urlAddress
{
    NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlAddress]];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions
                                                  error:&error];
    if (error != nil)
        return nil;
    return result;
}

- (NSData*)toJSON
{
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions
                                                  error:&error];
    if (error != nil)
        return nil;
    return result;
}

- (NSString*)descriptionCustom
{
    return [self descriptionCustom:0];
}

- (NSString*)descriptionCustom:(int)blank
{
    NSMutableString* blankString = [@"" mutableCopy];
    for (int i = 0; i < blank; ++i) {
        [blankString appendString:@""];
    }
    NSMutableString* string = [@"" mutableCopy];
    [string appendFormat:@"%@{\n", blankString];
    NSArray* keyArray = [self allKeys];
    for (int i = 0; i < keyArray.count; ++i) {
        NSString* key = keyArray[i];
        NSObject* object = self[key];
        if ([object isKindOfClass:[NSString class]]) {
            NSString* objectString = self[key];
            [string appendFormat:@"%@    , %@ = \"%@\"\n", blankString, key, objectString];
        } else if ([object isKindOfClass:[NSArray class]]) {
            NSArray* objectArray = self[key];
            [string appendFormat:@"%@    , %@ = ", blankString, key];
            [string appendString:[objectArray descriptionCustom:blank + 4]];
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            NSDictionary* objectDictionary = self[key];
            [string appendFormat:@"%@    , %@ = ", blankString, key];
            [string appendString:[objectDictionary descriptionCustom:blank + 4]];
        } else {
            [string appendFormat:@"%@    , %d = %@", blankString, i, object.description];
        }
    }
    [string appendFormat:@"%@}\n", blankString];
    return string;
}

@end
