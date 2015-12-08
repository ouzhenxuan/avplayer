

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface CustomPlayerView : UIView

@property(nonatomic,retain) AVPlayer *player;

//设置真实的下载进度
-(void) setTheTrueProgress:(CGFloat)precent;

- (void)setMyPlayerWithUrl:(NSString *)url Isfile:(BOOL)isFile;
- (void)destroyTheAVPlayer;
@end
