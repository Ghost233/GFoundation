//
//  GAFNetworkingHelper.h
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GAFNetworkingHelper : NSObject

+ (void)protobufRequestWithMethod:(NSString*)method
                        URLString:(NSString*)url
                       parameters:(NSData*)data
                          success:(void (^)(AFHTTPRequestOperation *operation, NSData* responseObject))success
                          failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
