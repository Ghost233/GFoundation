//
//  GRoundRectangleBoxView+Storyboard.h
//  GFoundation
//
//  Created by Ghost on 16/3/18.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import "GRoundRectangleBoxView.h"

@interface GRoundRectangleBoxView (Storyboard)

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end
