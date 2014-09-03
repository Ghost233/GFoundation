//
//  GHTMLTableHelper.h
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHTMLTable.h"

@interface GHTMLTableHelper : NSObject
{
    
}

@property (nonatomic, readonly) GHTMLTable* table;

@property (nonatomic, readonly) int row;
@property (nonatomic, readonly) int column;

- (id)initWithRow:(int)row WithColumn:(int)column;

- (void)resizeRow:(int)row;
- (void)resizeColumn:(int)column;
- (void)resizeRow:(int)row Column:(int)column;

@end
