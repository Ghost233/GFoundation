//
//  NSArrayExtensions.m
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import "NSArrayExtensions.h"

#import "NSDictionaryExtensions.h"

@implementation NSArray (NSArrayExtensionsCustom)

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
    [string appendFormat:@"%@[\n", blankString];
    for (int i = 0; i < self.count; ++i) {
        NSObject* object = self[i];
        if ([object isKindOfClass:[NSString class]]) {
            NSString* objectString = self[i];
            [string appendFormat:@"%@    , %d = %@\n", blankString, i, objectString];
        } else if ([object isKindOfClass:[NSArray class]]) {
            NSArray* objectArray = self[i];
            [string appendFormat:@"%@    , %d = ", blankString, i];
            [string appendString:[objectArray descriptionCustom:blank + 4]];
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            NSDictionary* objectDictionary = self[i];
            [string appendFormat:@"%@    , %d = ", blankString, i];
            [string appendString:[objectDictionary descriptionCustom:blank + 4]];
        } else {
            [string appendFormat:@"%@    , %d = %@", blankString, i, object.description];
        }
    }
    [string appendFormat:@"%@]\n", blankString];
    return string;
}

@end
