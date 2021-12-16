//
//  UILabel+UI.m
//  Chongdianzhuang
//
//  Created by 孙明海 on 16/11/14.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import "UILabel+UI.h"

@implementation UILabel (UI)

+ (instancetype)labelWithText:(NSString *)text {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    return label;
}

+ (instancetype)labelWithTextFont:(CGFloat)font titleColor:(UIColor *)color {
    UILabel *label = [[UILabel alloc] init];
    [label setTextFont:font titleColor:color];
    return label;
}

+ (instancetype)labelWithTextFont:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [self labelWithTextFont:font titleColor:color];
    label.textAlignment = textAlignment;
    return label;
}

+ (instancetype)
labelWithText:(NSString *)text font:(CGFloat)font titleColor:(UIColor *)color {
    UILabel *label = [self labelWithTextFont:font titleColor:color];
    label.text = text;
    return label;
}

- (void)setTextFont:(CGFloat)font titleColor:(UIColor *)color {
    self.font = [UIFont systemFontOfSize:font];
    self.textColor = color;
}

- (void)setTextFont:(CGFloat)font titleColor:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment {
    [self setTextFont:font titleColor:color];
    self.textAlignment = textAlignment;
}

@end
