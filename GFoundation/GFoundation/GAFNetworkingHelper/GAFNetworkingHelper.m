//
//  GAFNetworkingHelper.m
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GAFNetworkingHelper.h"

@implementation GAFNetworkingHelper

+ (void)protobufRequestWithMethod:(NSString*)method
                        URLString:(NSString*)url
                       parameters:(NSData*)data
                          success:(void (^)(AFHTTPRequestOperation *operation, NSData* responseObject))success
                          failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    NSError* error = NULL;
    NSMutableURLRequest* request = [[AFHTTPRequestSerializer serializer] requestWithMethod:method URLString:url parameters:NULL error:&error];
    
    request.HTTPBody = data;
    
    manager.responseSerializer = [AFCompoundResponseSerializer serializer];
    
    AFHTTPRequestOperation* operation = [manager HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(operation, responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(operation, error);
    }];
    
    [manager.operationQueue addOperation:operation];
}

+ (void)jsonRequestWithMethod:(NSString*)method
                    URLString:(NSString*)url
                   parameters:(NSDictionary*)data
                      success:(void (^)(AFHTTPRequestOperation *operation, NSDictionary* responseObject))success
                      failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    NSError* error = NULL;
    NSMutableURLRequest* request = [[AFHTTPRequestSerializer serializer] requestWithMethod:method URLString:url parameters:NULL error:&error];
    
    AFHTTPRequestOperation* operation = [manager HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(operation, responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(operation, error);
    }];
    
    [manager.operationQueue addOperation:operation];
}

@end
