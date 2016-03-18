//
//  GRoundRectangleBoxView.h
//  Golien
//
//  Created by Ghost on 15/9/5.
//  Copyright (c) 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRoundRectangleBoxView : UIView

@property (nonatomic, readwrite) CGFloat radius;
@property (nonatomic, readwrite) CGFloat strokeWidth;
@property (nonatomic, strong) UIColor* color;

@end
