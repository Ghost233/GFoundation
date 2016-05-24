//
//  UINavigationBar+BackgroundColor.h
//  GFoundation
//
//  Created by Ghost on 16/5/24.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (BackgroundColor)

- (void)lt_setBackgroundColor:(UIColor *)backgroundColor;
- (void)lt_setElementsAlpha:(CGFloat)alpha;
- (void)lt_setTranslationY:(CGFloat)translationY;
- (void)lt_reset;

@end
