//
//  NSDataExtensions.h
//  DreamCalendar
//
//  Created by Ghost on 13-11-15.
//  Copyright (c) 2013年 mydream. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (NSDataExtensionsCustom)

- (NSData*)encodeBase64;
- (NSString*)encodeBase64ToNSString;
- (NSData*)decodeBase64;
- (NSData*)decodeBase64WithNSString:(NSString*)string;

@end
