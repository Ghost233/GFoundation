//
//  GRoundRectangleView.h
//  Golien
//
//  Created by Ghost on 15/10/7.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GVectorView.h"

@interface GRoundRectangleView : NSObject<GVectorObject>

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
