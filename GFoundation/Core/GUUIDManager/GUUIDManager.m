//
//  GUUIDManager.m
//  GFoundation
//
//  Created by Ghost on 16/6/17.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import "GUUIDManager.h"

#import <SSKeychain/SSKeychain.h>

@implementation GUUIDManager

+ (GUUIDManager*)getInstance
{
    static GUUIDManager *sharedGUUIDManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedGUUIDManager = [[GUUIDManager alloc] init];
    });
    
    return sharedGUUIDManager;
}

- (NSString*)getUUIDWithService:(NSString*)serviceName WithAccount:(NSString*)accountString
{
    NSString * uuid = [SSKeychain passwordForService:serviceName account:accountString];
    if (uuid) {
        return uuid;
    }
    CFUUIDRef puuid = CFUUIDCreate( nil );
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    [SSKeychain setPassword: result forService:serviceName account:accountString];
    return result;
}

@end
