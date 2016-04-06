//
//  GRoundSpreadSegue.m
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/4/5.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import "GRoundSpreadSegue.h"

#import "GRoundSpreadTransitioning.h"

@interface GRoundSpreadSegue ()

@end

@implementation GRoundSpreadSegue

- (void)perform
{
    self.destinationViewController.transitioningDelegate = self;
    [self.sourceViewController showViewController:self.destinationViewController sender:self];
}

#pragma UIViewControllerTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    if (self.delegate == NULL)
    {
        GRoundSpreadTransitioning* transitioning = [GRoundSpreadTransitioning new];
        transitioning.startCenterPoint = CGPointMake(100, 100);
        transitioning.startRadius = 50;
        transitioning.duration = 1;
        self.delegate = transitioning;
    }
    return self.delegate;
}

@end
