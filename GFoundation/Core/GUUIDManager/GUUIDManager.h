//
//  GUUIDManager.h
//  GFoundation
//
//  Created by Ghost on 16/6/17.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GUUIDManager : NSObject

+ (GUUIDManager*)getInstance;

- (NSString*)getUUIDWithService:(NSString*)serviceName WithAccount:(NSString*)accountString;

@end
