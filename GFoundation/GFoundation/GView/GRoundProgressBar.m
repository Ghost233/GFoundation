//
//  GRoundProgressBar.m
//  GFoundation
//
//  Created by Ghost on 15/10/30.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundProgressBar.h"

@interface GRoundProgressBar ()

@end

@implementation GRoundProgressBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.trackColor = [UIColor cyanColor];
        self.progressColor = [UIColor whiteColor];
        self.progress = 0.8;
        self.progressWidth = 10;
        self.radius = 100;
        
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
    self.trackPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)
                                                    radius:(self.radius)
                                                startAngle:0
                                                  endAngle:M_PI * 2
                                                 clockwise:YES];
    
    self.trackLayer = [CAShapeLayer new];
    [self.layer addSublayer:self.trackLayer];
    self.trackLayer.fillColor = nil;
    self.trackLayer.frame = self.bounds;
    self.trackLayer.path = self.trackPath.CGPath;
    
    self.progressPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)
                                                       radius:(self.radius)
                                                   startAngle:+ M_PI_2
                                                     endAngle:(M_PI * 2) + M_PI_2
                                                    clockwise:YES];
    
    self.progressLayer = [CAShapeLayer new];
    [self.layer addSublayer:self.progressLayer];
    self.progressLayer.fillColor = nil;
    self.progressLayer.lineCap = kCALineCapRound;
    self.progressLayer.frame = self.bounds;
    
    self.progressLayer.path = self.progressPath.CGPath;
    
    self.progressLayer.speed       = 1.5;
    self.progressLayer.strokeStart = 0;
    self.progressLayer.strokeEnd   = 0;
}

- (void)drawRect:(CGRect)rect {
    [self drawLayer];
}

- (void)drawLayer
{
    self.progressPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)
                                                       radius:(self.radius)
                                                   startAngle:+ M_PI_2
                                                     endAngle:(M_PI * 2) + M_PI_2
                                                    clockwise:YES];
    
    
    self.progressLayer.path = self.progressPath.CGPath;
    
    self.trackPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)
                                                    radius:(self.radius)
                                                startAngle:0
                                                  endAngle:M_PI * 2
                                                 clockwise:YES];
    self.trackLayer.path = self.trackPath.CGPath;
}

@end
