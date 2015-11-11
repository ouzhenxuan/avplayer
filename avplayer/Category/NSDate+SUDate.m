//
//  NSDate+SUDate.m
//  SeeU
//
//  Created by ZhouChunlong on 15/8/11.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//

#import "NSDate+SUDate.h"

@implementation NSDate (SUDate)

+ (NSString *) getDateFormatYYYYMMDDHHmmssWithDate:(NSDate *) date{
    NSDateFormatter *customDateFormatter = [[NSDateFormatter alloc] init];
    [customDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return  [customDateFormatter stringFromDate:date];
}

+ (NSString *) getDateFormatYYYYMMDDHHmmWithDate:(NSDate *) date{
    NSDateFormatter *customDateFormatter = [[NSDateFormatter alloc] init];
    [customDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    return  [customDateFormatter stringFromDate:date];
}

+ (NSString *) getDateFormatYYYYMMDDWithDate:(NSDate *) date{
    NSDateFormatter *customDateFormatter = [[NSDateFormatter alloc] init];
    [customDateFormatter setDateFormat:@"yyyy-MM-dd"];
    return  [customDateFormatter stringFromDate:date];
}

+ (NSString *) getCurrentDateWithFormatYYYYMMDD{
    NSDateFormatter *customDateFormatter = [[NSDateFormatter alloc] init];
    [customDateFormatter setDateFormat:@"yyyyMMdd"];
    return  [customDateFormatter stringFromDate:[NSDate date]];
}

+ (NSInteger) getCurrentTimezoneWithInt{
    NSInteger secondsFromGMT = [NSTimeZone systemTimeZone].secondsFromGMT;
    return secondsFromGMT%3600==0?secondsFromGMT/3600:secondsFromGMT/3600>0?secondsFromGMT/3600+1:secondsFromGMT/3600-1;
}

@end
