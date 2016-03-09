//
//  GRoundProgressBar.m
//  GFoundation
//
//  Created by Ghost on 15/10/30.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundProgressBar.h"

#import <pop/POP.h>

@interface GRoundProgressBar ()

@property (nonatomic, readwrite) BOOL isRefresh;

@end

@implementation GRoundProgressBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.trackColor = [UIColor cyanColor];
        self.progressColor = [UIColor whiteColor];
        self.progressWidth = 10;
        
        [self load];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self load];
    }
    return self;
}

- (void)load
{
    self.isRefresh = YES;
}

- (void)reloadProgressBar
{
    [self reloadProgressBar:self.bounds];
}

- (void)reloadProgressBar:(CGRect)rect
{
    float lessSide = rect.size.width > rect.size.height ? rect.size.height : rect.size.width;
    self.radius = lessSide / 2 - self.progressWidth * 3 / 4;
    
    self.trackPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
                                                    radius:(self.radius)
                                                startAngle:0
                                                  endAngle:M_PI * 2
                                                 clockwise:YES];
    
    self.trackLayer = [CAShapeLayer new];
    [self.layer addSublayer:self.trackLayer];
    self.trackLayer.fillColor = nil;
    self.trackLayer.strokeColor = self.trackColor.CGColor;
    self.trackLayer.frame = rect;
    self.trackLayer.path = self.trackPath.CGPath;
    self.trackLayer.lineWidth = self.progressWidth;
    
    self.progressPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
                                                       radius:(self.radius)
                                                   startAngle:+ M_PI_2
                                                     endAngle:(M_PI * 2) + M_PI_2
                                                    clockwise:YES];
    
    self.progressLayer = [CAShapeLayer new];
    [self.layer addSublayer:self.progressLayer];
    self.progressLayer.fillColor = nil;
    self.progressLayer.strokeColor = self.progressColor.CGColor;
    self.progressLayer.lineCap = kCALineCapRound;
    self.progressLayer.frame = rect;
    self.progressLayer.lineWidth = self.progressWidth;
    
    self.progressLayer.path = self.progressPath.CGPath;
    
    self.progressLayer.speed       = self.speed;
    self.progressLayer.strokeStart = self.strokeStart;
    self.progressLayer.strokeEnd   = self.strokeEnd;

}

- (void)setProgress:(float)progress WithAnimate:(BOOL)isAnimate
{
    _progress = progress;
    
    if (isAnimate)
    {
        POPSpringAnimation *strokeAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPShapeLayerStrokeEnd];
        strokeAnimation.toValue = @(progress);
        strokeAnimation.springBounciness = 5.f;
        strokeAnimation.removedOnCompletion = NO;
        [self.progressLayer pop_addAnimation:strokeAnimation forKey:@"progressLayerStrokeAnimation"];
    }
    else
    {
        self.progressLayer.strokeEnd = self.strokeEnd = progress;
//        [self.progressLayer removeAllAnimations];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    if (self.isRefresh)
    {
        self.isRefresh = NO;
        [self reloadProgressBar:self.bounds];
    }
}

@end
