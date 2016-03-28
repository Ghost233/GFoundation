//
//  GRoundView.h
//  GFoundation
//
//  Created by Ghost on 15/11/2.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GVectorView.h"

@interface GRoundView : NSObject<GVectorObject>

@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
