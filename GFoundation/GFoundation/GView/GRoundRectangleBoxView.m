//
//  GRoundRectangleBoxView.m
//  Golien
//
//  Created by Ghost on 15/9/5.
//  Copyright (c) 2015年 Ghost. All rights reserved.
//

#import "GRoundRectangleBoxView.h"

@implementation GRoundRectangleBoxView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.strokeWidth = 5;
        self.color = [UIColor blueColor];
        self.radius = 5;
        
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
    
}

- (void)drawRect:(CGRect)rect {
    CGRect tempRect = CGRectMake(rect.origin.x + self.strokeWidth / 2, rect.origin.y + self.strokeWidth / 2, rect.size.width - self.strokeWidth, rect.size.height - self.strokeWidth);
    
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect:tempRect cornerRadius:self.radius];
    [self.color setStroke];
    rectanglePath.lineWidth = self.strokeWidth;
    [rectanglePath stroke];
}

@end
