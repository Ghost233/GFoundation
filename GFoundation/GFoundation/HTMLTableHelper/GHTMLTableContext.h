//
//  GHTMLTableContext.h
//  GFoundation
//
//  Created by Ghost on 14-8-21.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHTMLTypedef.h"

@interface GHTMLTableContext : NSObject

@property (nonatomic, strong) NSString* context;

- (id)init;

- (NSString*)description;

@end
