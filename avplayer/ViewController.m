//
//  ViewController.m
//  avplayer
//
//  Created by ouzhenxuan on 15/10/29.
//  Copyright © 2015年 ouzhenxuan. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "UIImage+SUImage.h"

#import "ASIHTTPRequest.h"

#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define device_height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
{
    ASIHTTPRequest *videoRequest;
    unsigned long long Recordull;
    BOOL isPlay;
    
    BOOL isPlaying;
    UISlider *_movieProgressSlider;
    CGFloat  totalMovieDuration;
    UIProgressView  *_progressView;
    
    
    UIActivityIndicatorView * videoLoding;      //视频缓冲
    UIImageView * videoPlay;
    int recordCurrentTime;
    
    IBOutlet UILabel * showTheTime ;                     //显示快进快退的时间
    NSString * originalTime;                    //原始时间
}
@property (retain, nonatomic) UISlider *movieProgressSlider;
@property (retain, nonatomic) UIProgressView  *progressView;
@property (strong,nonatomic) MPMoviePlayerController * moviePlayer;
@end

@implementation ViewController
@synthesize progressView = _progressView;

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    NSString * url = @"http://ouzhenxuan.file.alimmdn.com/560a4ced60b258073cc75269/ios1444120900.jpg?t=1444120909931";
//    [_cusromPlayer setMyPlayerWithUrl:url];
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [_cusromPlayer destroyTheAVPlayer];
    
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self videoPlay];
    
}

//边下边播
- (void)videoPlay{
    NSString *webPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Private Documents/Temp"];
    NSString *cachePath = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Private Documents/Cache"];
    NSFileManager *fileManager=[NSFileManager defaultManager];
    if(![fileManager fileExistsAtPath:cachePath])
    {
        [fileManager createDirectoryAtPath:cachePath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    if ([fileManager fileExistsAtPath:[cachePath stringByAppendingPathComponent:[NSString stringWithFormat:@"vedio.mp4"]]]) {
        
//        [_cusromPlayer destroyTheAVPlayer];
        [_cusromPlayer setMyPlayerWithUrl:[cachePath stringByAppendingPathComponent:[NSString stringWithFormat:@"vedio.mp4"]] Isfile:YES];
        [_cusromPlayer.player play];
        videoRequest = nil;
    }else{
//        ASIHTTPRequest *request=[[ASIHTTPRequest alloc] initWithURL:[NSURL URLWithString:@"http://static.tripbe.com/videofiles/20121214/9533522808.f4v.mp4"]];
//        http://seeudev.file.alimmdn.com/560bad2f60b2b52c9c856ce2/ios1448166890.mp4
        ASIHTTPRequest *request=[[ASIHTTPRequest alloc] initWithURL:[NSURL URLWithString:@"http://ignhdvod-f.akamaihd.net/i/assets.ign.com/videos/zencoder/,416/d4ff0368b5e4a24aee0dab7703d4123a-110000,640/d4ff0368b5e4a24aee0dab7703d4123a-500000,640/d4ff0368b5e4a24aee0dab7703d4123a-1000000,960/d4ff0368b5e4a24aee0dab7703d4123a-2500000,1280/d4ff0368b5e4a24aee0dab7703d4123a-3000000,-1354660143-w.mp4.csmil/master.m3u8"]];
        //下载完存储目录
        [request setDownloadDestinationPath:[cachePath stringByAppendingPathComponent:[NSString stringWithFormat:@"vedio.mp4"]]];
        //临时存储目录
        [request setTemporaryFileDownloadPath:[webPath stringByAppendingPathComponent:[NSString stringWithFormat:@"vedio.mp4"]]];
        [request setBytesReceivedBlock:^(unsigned long long size, unsigned long long total) {
            NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
            [userDefaults setDouble:total forKey:@"file_length"];
            [self setThePross:total];
            Recordull += size;//Recordull全局变量，记录已下载的文件的大小
            if (!isPlay&&Recordull > 400000) {
                isPlay = !isPlay;
                [self playVideo];
            }
        }];
        //断点续载
        [request setAllowResumeForFileDownloads:YES];
        [request startAsynchronous];
        videoRequest = request;
    }
}

- (void)playVideo{
    static dispatch_once_t once ;
    NSString * url = @"http://127.0.0.1:12345/vedio.mp4";
//    dispatch_once(&once, ^{
        [_cusromPlayer setMyPlayerWithUrl:url Isfile:NO];
//    });
    [_cusromPlayer.player play];
}

//重新设置进度条
- (void) setThePross:(unsigned long long) total{
    CGFloat precent = Recordull/(total * 1.0);
    [_cusromPlayer setTheTrueProgress:precent];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
