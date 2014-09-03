//
//  GHTMLTable.m
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GHTMLTable.h"

@implementation GHTMLTable

- (id)init
{
    if (self = [super init])
    {
        _tableRowArray = [@[] mutableCopy];
        _width = -1;
    }
    return self;
}

- (NSString*)description
{
    NSMutableString* tempString = [@"<table" mutableCopy];
    if (_border > 0) [tempString appendFormat:@" border=\"%d\"", _border];
    [tempString appendString:@">"];
    for (GHTMLTableRow* row in _tableRowArray)
    {
        [tempString appendString:[row description]];
    }
    [tempString appendString:@"</table>"];
    
    return tempString;
}

- (void)resizeRow:(int)row Column:(int)column
{
    if (_tableRowArray.count > row)
    {
        while (_tableRowArray.count > row)
        {
            [_tableRowArray removeLastObject];
        }
    }
    else
    {
        while (_tableRowArray.count > row)
        {
            [_tableRowArray addObject:[[GHTMLTableRow alloc] init]];
        }
    }
    
    for (GHTMLTableRow* row in _tableRowArray)
    {
        [row resizeColumn:column];
    }
}

@end
