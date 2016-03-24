//
//  GFoundation.h
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#ifndef GFoundation_GFoundation_h
#define GFoundation_GFoundation_h

#import "AFNetworking.h"
#import "Mantle.h"
#import "Masonry.h"
#import "FMDB.h"
#import "NSLogger.h"
#import "POP.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "ReactiveCocoa.h"
#import "YYKit.h"

#ifdef DEBUG
# define DNSLog(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define DNSLog(...){};
#endif

#define ZAssert(condition, ...) do { if (!(condition)) { ALog(__VA_ARGS__); }} while(0)

#define WeakSelf(ws)  __weak __typeof(&*self)ws = self;
#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)

#endif
