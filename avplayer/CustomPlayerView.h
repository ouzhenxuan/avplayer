

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface CustomPlayerView : UIView

@property(nonatomic,retain) AVPlayer *player;




- (void)setMyPlayerWithUrl:(NSString *)url;
- (void)destroyTheAVPlayer;
@end
