//
//  GRoundSpreadTransitioning.h
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/4/6.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRoundSpreadTransitioning : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, readwrite) IBInspectable CGPoint startCenterPoint;
@property (nonatomic, readwrite) IBInspectable CGFloat startRadius;
@property (nonatomic, readwrite) IBInspectable CGFloat duration;

@end
