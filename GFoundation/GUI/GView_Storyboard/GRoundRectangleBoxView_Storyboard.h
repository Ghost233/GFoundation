//
//  GRoundRectangleBoxView_Storyboard.h
//  GFoundation
//
//  Created by Ghost on 16/3/10.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <GUIFramework/GUIFramework.h>

IB_DESIGNABLE

@interface GRoundRectangleBoxView (Storyboard)

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end
