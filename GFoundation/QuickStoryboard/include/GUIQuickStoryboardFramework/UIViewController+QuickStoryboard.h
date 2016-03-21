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

@end
