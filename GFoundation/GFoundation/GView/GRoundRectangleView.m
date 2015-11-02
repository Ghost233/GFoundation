//
//  GRoundRectangleView.m
//  Golien
//
//  Created by Ghost on 15/10/7.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundRectangleView.h"

@implementation GRoundRectangleView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
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
    CGRect tempRect = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect:tempRect cornerRadius:self.radius];
    [self.color setFill];
    [rectanglePath fill];
}

@end
