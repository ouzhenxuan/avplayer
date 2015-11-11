//
//  UIImage+SUImage.h
//  SeeU
//
//  Created by ozx on 15/8/27.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//
#ifndef DEVICE_HEIGHT
#define DEVICE_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#endif

#import <UIKit/UIKit.h>

@interface UIImage (SUImage)

/**
 *  获取屏幕大小的图片
 *
 *  @param imageName 图片名字
 *
 *  @return UIImage
 */
+ (UIImage *) getImageWithName:(NSString*)imageName;
/**
 *  通过颜色来生成纯色图片
 *
 *  @param color 颜色
 *  @param frame 图片大小
 *
 *  @return 纯色图片
 */
+ (UIImage *)imageFromColor:(UIColor *)color frame:(CGRect)frame;

@end
