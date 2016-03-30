//
//  GRoundRectangleVectorView.h
//  GUIFramework
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundRectangleVectorView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end