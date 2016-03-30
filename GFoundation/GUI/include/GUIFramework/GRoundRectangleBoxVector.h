//
//  GRoundRectangleBoxView.h
//  Golien
//

#import <UIKit/UIKit.h>

#import "GDrawVectorView.h"

@interface GRoundRectangleBoxVector : NSObject<GDrawVectorObject>

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
