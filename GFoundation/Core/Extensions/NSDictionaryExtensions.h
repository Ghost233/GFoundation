//
//  NSDictionaryExtensions.h
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NSDictionaryExtensionsCustom)

/**
 *  从URL地址将json内容抓取下来,并转为NSDictionary
 *
 *  @param urlAddress url地址
 *
 *  @return json转化之后的NSDictionary
 */
+ (NSDictionary*)dictionaryWithContentsOfJSONURLString:(NSString*)urlAddress;

/**
 *  将self序列化为NSData
 *
 *  @return 系列化后的json
 */
- (NSData*)toJSON;

- (NSString*)descriptionCustom;
- (NSString*)descriptionCustom:(int)blank;

@end
