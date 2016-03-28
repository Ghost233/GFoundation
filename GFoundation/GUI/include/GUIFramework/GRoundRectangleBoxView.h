//
//  GRoundRectangleBoxView.h
//  Golien
//
//  Created by Ghost on 15/9/5.
//  Copyright (c) 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GVectorView.h"

@interface GRoundRectangleBoxView : NSObject<GVectorObject>

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
