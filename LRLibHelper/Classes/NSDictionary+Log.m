//
//  NSDictionary+Log.m
//  LHY_XJCX_KHD
//
//  Created by 李睿 on 2019/8/12.
//  Copyright © 2019 com.linghangyuan.XJCX. All rights reserved.
//

#import "NSDictionary+Log.h"

@implementation NSDictionary (Log)

- (NSString *)description
{
    NSMutableString *strM = [NSMutableString stringWithString:@"\n{"];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([obj isKindOfClass:[NSString class]])
        {
            [strM appendFormat:@" %@ = %@\n", key, obj];
        }
        else
        {
            [strM appendFormat:@" %@ = %@\n", key, [obj description]];
        }
    }];
    [strM appendString:@"}"];
    return strM;
}

@end
