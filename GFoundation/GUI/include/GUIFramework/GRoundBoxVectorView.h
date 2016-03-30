//
//  GRoundBoxVectorView.h
//  GUIFramework
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GRoundBoxVectorView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end