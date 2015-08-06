//
//  GFoundation.h
//  GFoundation
//
//  Created by Ghost on 14-9-20.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#ifndef GFoundation_GFoundation_h
#define GFoundation_GFoundation_h

#import <AFNetworking.h>
#import <BlocksKit/BlocksKit.h>
#import <EGORefreshTableHeaderView.h>
#import <LoadMoreTableFooterView.h>
#import <JSONKit.h>
#import <MBProgressHUD.h>
#import <Mantle.h>
#import <Masonry.h>
#import <OpenUDID.h>
#import <Overline+BlocksKit.h>
#import <UIImageView+WebCache.h>
#import <UIView+Toast.h>
#import <UIColor+Expanded.h>
#import <UIColor+HSV.h>
#import <Crackify.h>

#ifdef DEBUG
    #define DLog(...) NSLog(@"%s %@", __PRETTY_FUNCTION__, [NSString stringWithFormat:__VA_ARGS__])
    #define ALog(...) [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithCString:__PRETTY_FUNCTION__ encoding:NSUTF8StringEncoding] file:[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding] lineNumber:__LINE__ description:__VA_ARGS__]
#else
    #define DLog(...) do { } while (0)
    #ifndef NS_BLOCK_ASSERTIONS
        #define NS_BLOCK_ASSERTIONS
    #endif
    #define ALog(...) NSLog(@"%s %@", __PRETTY_FUNCTION__, [NSString stringWithFormat:__VA_ARGS__])
#endif

#define ZAssert(condition, ...) do { if (!(condition)) { ALog(__VA_ARGS__); }} while(0)

#define WeakSelf(ws)  __weak __typeof(&*self)ws = self;

#endif
