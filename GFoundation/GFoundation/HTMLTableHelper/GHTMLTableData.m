//
//  GHTMLTableData.m
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GHTMLTableData.h"

@implementation GHTMLTableData

- (id)init
{
    if (self = [super init])
    {
        _contextArray = [@[] mutableCopy];
        
        _align = AlignTypeLeft;
        _valign = ValignTypeMiddle;
        _colspan = 1;
        _rowspan = 1;
        _height = -1;
        _width = -1;
    }
    return self;
}

- (NSString*)description
{
    NSMutableString* tempString = [@"<td>" mutableCopy];
    for (GHTMLTableContext* context in _contextArray)
    {
        [tempString appendString:[context description]];
    }
    [tempString appendString:@"</td>"];
    return tempString;
}

@end
