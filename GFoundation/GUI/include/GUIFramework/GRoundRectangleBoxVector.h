//
//  GRoundRectangleBoxView.h
//  Golien
//

#import <UIKit/UIKit.h>

@interface GRoundRectangleBoxVector : NSObject

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
