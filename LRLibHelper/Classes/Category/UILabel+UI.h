//
//  UILabel+UI.h
//  Chongdianzhuang
//
//  Created by 孙明海 on 16/11/14.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (UI)

+ (instancetype)labelWithText:(NSString *)text;

+ (instancetype)labelWithTextFont:(CGFloat)font titleColor:(UIColor *)color;

+ (instancetype)labelWithTextFont:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment;

+ (instancetype)labelWithText:(NSString *)text font:(CGFloat)font titleColor:(UIColor *)color;

- (void)setTextFont:(CGFloat)font titleColor:(UIColor *)color;

- (void)setTextFont:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment;


@end


 
