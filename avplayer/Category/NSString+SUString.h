//
//  NSString+SUString.h
//  SeeU
//
//  Created by ouzhenxuan on 15/11/10.
//  Copyright © 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SUString)


/**
 *  排除空值，nil
 *
 *  @param str 要排除的字符串
 *
 *  @return 如果为空返回@“”
 */

+ (NSString *) stringWithoutNull:(NSString*)str;

@end
