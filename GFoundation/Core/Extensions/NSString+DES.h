//
//  NSString+DES.h
//  yuanda
//
//  Created by Ghost on 14-8-6.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DES)

+ (NSData *)encrypt:(NSData *)data key:(NSString *)key;
+ (NSData *)decrypt:(NSData *)data key:(NSString *)key;

@end
