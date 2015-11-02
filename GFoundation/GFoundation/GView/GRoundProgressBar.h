//
//  GRoundProgressBar.h
//  GFoundation
//
//  Created by Ghost on 15/10/30.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundProgressBar : UIView

@property (nonatomic, strong) CAShapeLayer* trackLayer;
@property (nonatomic, strong) UIBezierPath* trackPath;
@property (nonatomic, strong) CAShapeLayer* progressLayer;
@property (nonatomic, strong) UIBezierPath* progressPath;

@property (nonatomic, strong) IBInspectable UIColor* trackColor;
@property (nonatomic, strong) IBInspectable UIColor* progressColor;
@property (nonatomic) IBInspectable float progress;//0~1之间的数
@property (nonatomic) IBInspectable float progressWidth;
@property (nonatomic) IBInspectable float radius;

//- (void)updateWithRadius:(float)radius WithProgressWidth:(CGFloat)width;

- (void)setProgress:(float)progress WithAnimate:(BOOL)isAnimate;

@end
