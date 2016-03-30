#import <UIKit/UIKit.h>

@protocol GDrawVectorObject <NSObject>

- (void)customDrawRect:(CGRect)rect;

@end

IB_DESIGNABLE

@interface GDrawVectorView : UIView

@property (nonatomic, weak) IBOutlet id<GDrawVectorObject> drawDelegate;

@end
