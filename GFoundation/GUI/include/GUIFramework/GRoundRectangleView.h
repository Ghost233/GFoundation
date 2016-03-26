//
//  GRoundRectangleView.h
//  Golien
//
//  Created by Ghost on 15/10/7.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundRectangleView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)drawCustomView:(CGRect)rect;

@end
