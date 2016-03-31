//
//  GRoundRectangleView.h
//  Golien
//

#import <UIKit/UIKit.h>

#import "GDrawVectorObject.h"

@interface GRoundRectangleVector : NSObject<GDrawVectorObject>

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
