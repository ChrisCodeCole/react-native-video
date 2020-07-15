#import <Foundation/Foundation.h>
#import "AVKit/AVKit.h"

//*Protocol is required by the implementing class
//*These methods are delegated to AVPlayerViewController to handle these events

@protocol RCTVideoPlayerViewControllerDelegate <NSObject>
- (void)videoPlayerViewControllerWillDismiss:(AVPlayerViewController *)playerViewController;
- (void)videoPlayerViewControllerDidDismiss:(AVPlayerViewController *)playerViewController;
@end
