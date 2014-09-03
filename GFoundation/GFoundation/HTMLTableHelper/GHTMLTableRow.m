//
//  GHTMLTableRow.m
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GHTMLTableRow.h"

@implementation GHTMLTableRow

- (id)init
{
    if (self = [super init])
    {
        _tableDataArray = [@[] mutableCopy];
        
        _align = AlignTypeLeft;
        _valign = ValignTypeMiddle;
    }
    return self;
}

- (NSString*)description
{
    NSMutableString* tempString = [@"<tr>" mutableCopy];
    for (GHTMLTableData* data in _tableDataArray)
    {
        [tempString appendString:[data description]];
    }
    [tempString appendString:@"</tr>"];
    return tempString;
}

- (void)resizeColumn:(int)column
{
    if (_tableDataArray.count > column)
    {
        while (_tableDataArray.count > column)
        {
            [_tableDataArray removeLastObject];
        }
    }
    else
    {
        while (_tableDataArray.count > column)
        {
            [_tableDataArray addObject:[[GHTMLTableData alloc] init]];
        }
    }
}

@end
