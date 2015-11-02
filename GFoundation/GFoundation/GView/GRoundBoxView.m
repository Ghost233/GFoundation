//
//  GRoundBoxView.m
//  Golien
//
//  Created by Ghost on 15/10/9.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundBoxView.h"

@implementation GRoundBoxView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.color = [UIColor blueColor];
        self.strokeWidth = 10;
        
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
    CGRect tempRect;
    CGFloat lessSide = rect.size.width < rect.size.height ? rect.size.width : rect.size.height;
    CGFloat lessDistance = fabs(rect.size.width - rect.size.height);
    if (rect.size.width > rect.size.height)
    {
        tempRect = CGRectMake(rect.origin.x + self.strokeWidth / 2, rect.origin.y + self.strokeWidth / 2 + lessDistance / 2, lessSide - self.strokeWidth, lessSide - self.strokeWidth);
    }
    else
    {
        tempRect = CGRectMake(rect.origin.x + self.strokeWidth / 2 + lessDistance / 2,  self.strokeWidth / 2 + rect.origin.y, lessSide - self.strokeWidth, lessSide - self.strokeWidth);
    }

    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect:tempRect];
    [self.color setStroke];
    ovalPath.lineWidth = self.strokeWidth;
    [ovalPath stroke];
}

@end
