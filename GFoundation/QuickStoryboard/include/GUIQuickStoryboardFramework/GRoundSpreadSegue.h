//
//  GRoundSpreadSegue.h
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/4/5.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRoundSpreadSegue : UIStoryboardSegue <UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) IBOutlet id<UIViewControllerAnimatedTransitioning> delegate;

@end
