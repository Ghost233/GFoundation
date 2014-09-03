//
//  NSDataExtensions.m
//  GFoundation
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "NSDataExtensions.h"

#import "GTMBase64.h"
#import "NSStringExtensions.h"

@implementation NSData (NSDataExtensionsCustom)

- (NSData*)encodeBase64
{
    return [GTMBase64 encodeData:self];
}

- (NSData*)decodeBase64
{
    return [GTMBase64 decodeData:self];
}

- (NSString*)encodeBase64ToNSString
{
    return [[NSString alloc] initWithData:[GTMBase64 encodeData:self]
                                 encoding:NSUTF8StringEncoding];
}

- (NSData*)decodeBase64WithNSString:(NSString*)string
{
    return [[string dataUsingEncoding:NSUTF8StringEncoding] decodeBase64];
}

@end
