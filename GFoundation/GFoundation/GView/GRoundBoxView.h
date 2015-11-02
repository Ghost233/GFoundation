//
//  GRoundBoxView.h
//  Golien
//
//  Created by Ghost on 15/10/9.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundBoxView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end
