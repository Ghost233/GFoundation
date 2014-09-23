//
//  NSString+DES.h
//  yuanda
//
//  Created by Ghost on 14-8-6.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCrypto.h>

@interface NSString (DES)

+ (NSData *)encrypt:(NSData *)data encryptOrDecrypt:(CCOperation)encryptOperation key:(NSString *)key;

@end
