

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface CustomPlayerView : UIView
{
    float x;
    float y;
    float volume;
    __unsafe_unretained id    delegate;
}
@property(nonatomic,retain) AVPlayer *player;

@end
