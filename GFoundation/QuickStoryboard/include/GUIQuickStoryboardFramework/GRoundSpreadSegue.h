//
//  GRoundSpreadSegue.h
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/4/5.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRoundSpreadSegue : UIStoryboardSegue <UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning>
                                                
@property (nonatomic, readwrite) IBInspectable CGPoint startCenterPoint;
@property (nonatomic, readwrite) IBInspectable CGFloat startRadius;
@property (nonatomic, readwrite) IBInspectable CGFloat duration;

@end
