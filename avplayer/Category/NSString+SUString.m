//
//  NSString+SUString.m
//  SeeU
//
//  Created by ouzhenxuan on 15/11/10.
//  Copyright © 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//

#import "NSString+SUString.h"

@implementation NSString (SUString)

+ (NSString *) stringWithoutNull:(NSString*)str{
    
    if (str == nil ||[str isKindOfClass:[NSNull class]] || [str isEqualToString:@"(NULL)"] || [str isEqualToString:@"<null>"] || [str isEqualToString:@"<NULL>"] || [str isEqualToString:@"(null)"] ) {
        str = @"";
    }

    return str;
}

@end
