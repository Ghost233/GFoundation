//
//  GHTMLTableContext.m
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GHTMLTableContext.h"

@implementation GHTMLTableContext

- (id)init
{
    if (self = [super init])
    {
        _context = @"";
    }
    return self;
}

- (NSString*)description
{
    NSMutableString* tempString = [@"" mutableCopy];
    [tempString appendString:_context];
    return tempString;
}

@end
