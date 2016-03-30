//
//  GRoundRectangleBoxVectorView.h
//  GUIFramework
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundRectangleBoxVectorView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end