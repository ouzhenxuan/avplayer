//
//  ViewController.h
//  avplayer
//
//  Created by ouzhenxuan on 15/10/29.
//  Copyright © 2015年 ouzhenxuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPlayerView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet CustomPlayerView *cusromPlayer;
@property (weak, nonatomic) IBOutlet UILabel *lab;

@end

