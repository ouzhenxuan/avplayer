

#import "CustomPlayerView.h"
#import <MediaPlayer/MediaPlayer.h>
@implementation CustomPlayerView
+(Class)layerClass{
    return [AVPlayerLayer class];
}

-(AVPlayer*)player{
    return [(AVPlayerLayer*)[self layer]player];
}

-(void)setPlayer:(AVPlayer *)thePlayer{
    return [(AVPlayerLayer*)[self layer]setPlayer:thePlayer];
}


@end
