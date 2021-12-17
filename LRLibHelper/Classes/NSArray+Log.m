//
//  NSArray+Log.m
//  LHY_XJCX_KHD
//
//  Created by 李睿 on 2019/8/12.
//  Copyright © 2019 com.linghangyuan.XJCX. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)description
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj isKindOfClass:[NSString class]])
        {
            [strM appendFormat:@"\t\t%@,\n", obj];
        }
        else
        {
            [strM appendFormat:@"\t\t%@,\n", [obj description]];
        }
    }];
    [strM appendString:@"\t\t)"];
    return strM;
}

@end
