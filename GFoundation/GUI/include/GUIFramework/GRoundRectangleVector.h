//
//  GRoundRectangleView.h
//  Golien
//

#import <UIKit/UIKit.h>

@interface GRoundRectangleVector : NSObject

@property (nonatomic, readwrite) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
