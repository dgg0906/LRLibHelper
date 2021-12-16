//
//  NSString+URLCode.h
//  ZhiXian
//
//  Created by 李睿 on 2021/11/29.
//  Copyright © 2021 Alibaba. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (URLCode)

/**
 *  URLEncode
 */
- (NSString *)URLEncodedString;

/**
 *  URLDecode
 */
-(NSString *)URLDecodedString;

@end

NS_ASSUME_NONNULL_END
