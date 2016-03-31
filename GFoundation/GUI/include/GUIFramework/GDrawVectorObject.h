//
//  GDrawVectorObject.h
//  GUIFramework
//
//  Created by Ghost on 16/3/31.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GDrawVectorObject <NSObject>

- (void)customDrawRect:(CGRect)rect;

@end