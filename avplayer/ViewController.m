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

#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define device_height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
{
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
    
    NSString * url = @"http://ouzhenxuan.file.alimmdn.com/560a4ced60b258073cc75269/ios1444120900.jpg?t=1444120909931";
    [_cusromPlayer setMyPlayerWithUrl:url];
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [_cusromPlayer destroyTheAVPlayer];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
