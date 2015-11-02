//
//  GRoundView.m
//  GFoundation
//
//  Created by Ghost on 15/11/2.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundView.h"

@implementation GRoundView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.color = [UIColor blueColor];
        
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

- (void)updateColor:(UIColor*)color
{
    _color = color;
}

- (void)drawRect:(CGRect)rect {
    CGRect tempRect;
    CGFloat lessSide = rect.size.width < rect.size.height ? rect.size.width : rect.size.height;
    CGFloat lessDistance = fabs(rect.size.width - rect.size.height);
    if (rect.size.width > rect.size.height)
    {
        tempRect = CGRectMake(rect.origin.x + lessDistance / 2, rect.origin.y, lessSide, lessSide);
    }
    else
    {
        tempRect = CGRectMake(rect.origin.x, rect.origin.y + lessDistance / 2, lessSide, lessSide);
    }
    
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect:tempRect];
    [self.color setFill];
    [ovalPath fill];
}

@end
