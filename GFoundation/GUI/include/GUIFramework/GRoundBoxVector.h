//
//  GRoundBoxVector.h
//  Golien
//

#import <UIKit/UIKit.h>

#import "GDrawVectorObject.h"

@interface GRoundBoxVector : NSObject<GDrawVectorObject>

@property (nonatomic, readwrite) IBInspectable CGFloat strokeWidth;
@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
