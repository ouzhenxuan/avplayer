//
//  UIImage+SUImage.m
//  SeeU
//
//  Created by ozx on 15/8/27.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//

#import "UIImage+SUImage.h"

@implementation UIImage (SUImage)

+ (UIImage *) getImageWithName:(NSString*) imageName{
    //先来判断该设备是什么尺寸的。
    int height = DEVICE_HEIGHT;
    UIImage * image;
 
    if (height==480) {
        //4s
        NSString * name = [NSString stringWithFormat:@"%@_%@",imageName,@"480h"];
        image = [UIImage imageNamed:name];
        
    }else if (height==568){
        //5/5s
        NSString *name = [NSString stringWithFormat:@"%@_%@",imageName,@"568h"];
        image = [UIImage imageNamed:name];
    }else if (height==667){
        //6
        NSString *name = [NSString stringWithFormat:@"%@_%@",imageName,@"667h"];
        image = [UIImage imageNamed:name];
    }else if (height==736){
        //6p
        NSString *name = [NSString stringWithFormat:@"%@_%@",imageName,@"736h"];
        image = [UIImage imageNamed:name];
    }else{
        //        匹配失败就显示6的
        NSString *name = [NSString stringWithFormat:@"%@_%@",imageName,@"667h"];
        image = [UIImage imageNamed:name];
    }
    if (image == nil) {
        NSString *name = [NSString stringWithFormat:@"%@_%@",imageName,@"667h"];
        image = [UIImage imageNamed:name];
    }
    return image;
}

+ (UIImage *)imageFromColor:(UIColor *)color frame:(CGRect)frame {
    CGRect rect = CGRectMake(0, 0, frame.size.width, frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
