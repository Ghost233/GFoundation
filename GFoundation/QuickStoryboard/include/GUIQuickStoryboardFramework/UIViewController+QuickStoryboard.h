//
//  UIViewController+QuickStoryboard.h
//  GUIQuickStoryboardFramework
//
//  Created by Ghost on 16/3/19.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (QuickStoryboard)

- (IBAction)quickDismissAction:(id)sender;
- (IBAction)quickDismissActionWithAnimate:(id)sender;

- (IBAction)quickDismissSegue:(UIStoryboardSegue *)segue;
- (IBAction)quickDismissSegueWithAnimate:(UIStoryboardSegue *)segue;

- (IBAction)popViewControllerAction:(id)sender;
- (IBAction)popViewControllerActionWithAnimate:(id)sender;

- (IBAction)popViewControllerSegue:(UIStoryboardSegue *)segue;
- (IBAction)popViewControllerSegueWithAnimate:(UIStoryboardSegue *)segue;

- (IBAction)popToRootViewControllerAction:(id)sender;
- (IBAction)popToRootViewControllerActionWithAnimate:(id)sender;

- (IBAction)popToRootViewControllerSegue:(UIStoryboardSegue *)segue;
- (IBAction)popToRootViewControllerSegueWithAnimate:(UIStoryboardSegue *)segue;

- (IBAction)popToThisViewControllerSegue:(UIStoryboardSegue *)segue;
- (IBAction)popToThisViewControllerSegueWithAnimate:(UIStoryboardSegue *)segue;

- (IBAction)unwindSegue:(UIStoryboardSegue *)segue;
- (IBAction)unwindSegueWithAnimate:(UIStoryboardSegue *)segue;

@end
