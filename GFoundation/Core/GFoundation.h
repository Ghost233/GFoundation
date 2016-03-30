//
//  GFoundation.h
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#ifndef GFoundation_GFoundation_h
#define GFoundation_GFoundation_h

#import "GUIFramework.h"
#import "GUIQuickStoryboardFramework.h"
#import "GTMBase64.h"
#import "NSArrayExtensions.h"
#import "NSDataExtensions.h"
#import "NSDictionaryExtensions.h"
#import "NSString+DES.h"
#import "NSString+MD5.h"
#import "NSStringExtensions.h"
#import "UIView+CGRectExtension.h"

#define ZAssert(condition, ...) do { if (!(condition)) { ALog(__VA_ARGS__); }} while(0)

#define WeakSelf(ws)  __weak __typeof(&*self)ws = self;
#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)

#endif
