//
//  GVectorView.h
//  GUIFramework
//
//  Created by Ghost on 16/3/26.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GVectorObject <NSObject>

- (void)customDrawRect:(CGRect)rect;

@end

IB_DESIGNABLE

@interface GVectorView : UIView

@property (nonatomic, weak) IBInspectable IBOutlet id<GVectorObject> drawDelegate;

@end
