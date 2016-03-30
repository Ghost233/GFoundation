//
//  GRoundBoxVectorView.h
//  GUIFramework
//

#import <UIKit/UIKit.h>

@interface GRoundBoxVectorView : UIView

@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

@end