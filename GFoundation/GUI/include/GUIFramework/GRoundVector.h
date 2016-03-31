//
//  GRoundVector.h
//  GFoundation
//

#import <UIKit/UIKit.h>

#import "GDrawVectorObject.h"

@interface GRoundVector : NSObject<GDrawVectorObject>

@property (nonatomic, strong) IBInspectable UIColor* color;

- (void)customDrawRect:(CGRect)rect;

@end
