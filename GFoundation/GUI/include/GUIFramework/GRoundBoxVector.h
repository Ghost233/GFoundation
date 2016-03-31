//
//  GRoundBoxVector.h
//  Golien
//

#import <UIKit/UIKit.h>

@interface GRoundBoxVector : NSObject

@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
