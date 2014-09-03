//
//  GHTMLTableHelper.m
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GHTMLTableHelper.h"

@implementation GHTMLTableHelper

- (id)init
{
    if (self = [super init])
    {
        _table = [[GHTMLTable alloc] init];
        
        _row = 0;
        _column = 0;
    }
    return self;
}

- (id)initWithRow:(int)row WithColumn:(int)column
{
    if ([self init])
    {
        
    }
    return self;
}

- (void)resizeRow:(int)row
{
    [self resizeRow:row Column:_column];
}

- (void)resizeColumn:(int)column
{
    [self resizeRow:_row Column:column];
}

- (void)resizeRow:(int)row Column:(int)column
{
    _row = row;
    _column = column;
}

@end
