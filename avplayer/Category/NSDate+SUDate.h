//
//  NSDate+SUDate.h
//  SeeU
//
//  Created by ZhouChunlong on 15/8/11.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  常用时间函数
 */
@interface NSDate (SUDate)

/**
*  返回指定日期的yyyy-MM-dd HH:mm:ss格式
*
*  @param date NSDate
*
*  @return 返回指定日期的yyyy-MM-dd HH:mm:ss格式
*/
+ (NSString *) getDateFormatYYYYMMDDHHmmssWithDate:(NSDate *) date;//yyyy-MM-dd HH:mm:ss

/**
 *  返回指定日期的yyyy-MM-dd HH:mm格式
 *
 *  @param date NSDate
 *
 *  @return 返回指定日期的yyyy-MM-dd HH:mm:ss格式
 */
+ (NSString *) getDateFormatYYYYMMDDHHmmWithDate:(NSDate *) date;

/**
 *  返回指定日期的yyyy-MM-dd格式
 *
 *  @param date NSDate
 *
 *  @return 返回指定日期的yyyy-MM-dd HH:mm:ss格式
 */

+ (NSString *) getDateFormatYYYYMMDDWithDate:(NSDate *) date;

/**
 *  返回当前时间的yyyyMMdd格式
 *
 *  @return 返回当前时间的yyyyMMdd格式
 */
+ (NSString *) getCurrentDateWithFormatYYYYMMDD;

/**
 *  返回当前时区
 *
 *  @return 当前时区
 */
+ (NSInteger) getCurrentTimezoneWithInt;

@end
