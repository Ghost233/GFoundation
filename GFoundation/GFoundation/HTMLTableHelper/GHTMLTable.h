//
//  GHTMLTable.h
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHTMLTableRow.h"

@interface GHTMLTable : NSObject
{
}

@property (nonatomic, strong) NSMutableArray* tableRowArray;

@property (nonatomic, assign) int border;
@property (nonatomic, assign) int width;

- (id)init;

- (NSString*)description;

- (void)resizeRow:(int)row Column:(int)column;

@end
