//
//  GRoundRectangleBoxView.h
//  Golien
//
//  Created by Ghost on 15/9/5.
//  Copyright (c) 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundRectangleBoxView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)drawCustomView:(CGRect)rect;

@end
