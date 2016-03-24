//
//  GFoundation.h
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#ifndef GFoundation_GFoundation_h
#define GFoundation_GFoundation_h

#import <AFNetworking/AFNetworking.h>
#import <Mantle/Mantle.h>
#import <Masonry/Masonry.h>
#import <FMDB/FMDB.h>
#import <NSLogger/NSLogger.h>
#import <pop/POP.h>
#import <UITableView_FDTemplateLayoutCell/UITableView+FDTemplateLayoutCell.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <YYKit/YYKit.h>
#import <GFoundation/GUIQuickStoryboardFramework.h>
#import <GFoundation/GUIFramework.h>


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
