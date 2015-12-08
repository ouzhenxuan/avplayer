//
//  AppDelegate.h
//  avplayer
//
//  Created by ouzhenxuan on 15/10/29.
//  Copyright © 2015年 ouzhenxuan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HTTPServer;
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    HTTPServer *httpServer;
}
@property (strong, nonatomic) UIWindow *window;


@end

