//
//  GHTMLTableData.h
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHTMLTableContext.h"

@interface GHTMLTableData : NSObject

@property (nonatomic, strong) NSMutableArray* contextArray;

@property (nonatomic, assign) AlignType align;
@property (nonatomic, assign) ValignType valign;
@property (nonatomic, assign) int colspan;
@property (nonatomic, assign) int rowspan;
@property (nonatomic, assign) int height;
@property (nonatomic, assign) int width;

- (id)init;

- (NSString*)description;

@end
