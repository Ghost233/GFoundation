//
//  UINavigationController+Storyboard.h
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/3/19.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Storyboard)

- (IBAction)popViewControllerAction:(id)sender;
- (IBAction)popViewControllerActionWithAnimate:(id)sender;

- (IBAction)popViewControllerSegue:(id)sender;
- (IBAction)popViewControllerSegueWithAnimate:(id)sender;

- (IBAction)popToRootViewControllerAction:(id)sender;
- (IBAction)popToRootViewControllerActionWithAnimate:(id)sender;

- (IBAction)popToRootViewControllerSegue:(id)sender;
- (IBAction)popToRootViewControllerSegueWithAnimate:(id)sender;

@end
