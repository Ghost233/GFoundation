//
//  GHTMLTableRow.h
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHTMLTableData.h"

@interface GHTMLTableRow : NSObject

@property (nonatomic, strong) NSMutableArray* tableDataArray;

@property (nonatomic, assign) AlignType align;
@property (nonatomic, assign) ValignType valign;

- (id)init;

- (NSString*)description;

- (void)resizeColumn:(int)column;

@end
