#import <UIKit/UIKit.h>

#import "GDrawVectorObject.h"

IB_DESIGNABLE

@interface GDrawVectorView : UIView

@property (nonatomic, weak) IBOutlet id<GDrawVectorObject> drawDelegate;

@end
