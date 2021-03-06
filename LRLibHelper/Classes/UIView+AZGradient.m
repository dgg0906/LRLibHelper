//
//  UIView+AZGradient.m
//  AZCategory
//
//  Created by Alfred Zhang on 2017/6/29.
//  Copyright © 2017年 Alfred Zhang. All rights reserved.
//

#import "UIView+AZGradient.h"
#import <objc/runtime.h>

@implementation UIView (AZGradient)


+ (Class)layerClass {
    return [CAGradientLayer class];
}

+ (UIView *)az_gradientViewWithColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    UIView *view = [[self alloc] init];
    [view az_setGradientBackgroundWithColors:colors locations:locations startPoint:startPoint endPoint:endPoint];
    return view;
}

- (void)az_setGradientBackgroundWithColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    NSMutableArray *colorsM = [NSMutableArray array];
    for (UIColor *color in colors) {
        [colorsM addObject:(__bridge id)color.CGColor];
    }
    self.az_colors = [colorsM copy];
    self.az_locations = locations;
    self.az_startPoint = startPoint;
    self.az_endPoint = endPoint;
}

#pragma mark- Getter&Setter

- (NSArray *)az_colors {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setAz_colors:(NSArray *)colors {
    objc_setAssociatedObject(self, @selector(az_colors), colors, OBJC_ASSOCIATION_COPY_NONATOMIC);
    if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
        [((CAGradientLayer *)self.layer) setColors:self.az_colors];
    }
}

- (NSArray<NSNumber *> *)az_locations {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setAz_locations:(NSArray<NSNumber *> *)locations {
    objc_setAssociatedObject(self, @selector(az_locations), locations, OBJC_ASSOCIATION_COPY_NONATOMIC);
    if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
        [((CAGradientLayer *)self.layer) setLocations:self.az_locations];
    }
}

- (CGPoint)az_startPoint {
    return [objc_getAssociatedObject(self, _cmd) CGPointValue];
}

- (void)setAz_startPoint:(CGPoint)startPoint {
    objc_setAssociatedObject(self, @selector(az_startPoint), [NSValue valueWithCGPoint:startPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
        [((CAGradientLayer *)self.layer) setStartPoint:self.az_startPoint];
    }
}

- (CGPoint)az_endPoint {
    return [objc_getAssociatedObject(self, _cmd) CGPointValue];
}

- (void)setAz_endPoint:(CGPoint)endPoint {
    objc_setAssociatedObject(self, @selector(az_endPoint), [NSValue valueWithCGPoint:endPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if ([self.layer isKindOfClass:[CAGradientLayer class]]) {
        [((CAGradientLayer *)self.layer) setEndPoint:self.az_endPoint];
    }
}


@end

@implementation UILabel (AZGradient)

+ (Class)layerClass {
    return [CAGradientLayer class];
}
@end
@implementation UIView (Extension)

- (CGFloat)dd_left
{
    return self.frame.origin.x;
}

- (void)setDd_left:(CGFloat)left
{
    CGRect frame = self.frame;
    if(frame.origin.x != left)
    {
        frame.origin.x = left;
        self.frame = frame;
    }
}

- (CGFloat)dd_top
{
    return self.frame.origin.y;
}

- (void)setDd_top:(CGFloat)top
{
    CGRect frame = self.frame;
    if(frame.origin.y != top)
    {
        frame.origin.y = top;
        self.frame = frame;
    }
}

- (CGFloat)dd_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setDd_right:(CGFloat)right
{
    CGRect frame = self.frame;
    CGFloat newRight = right - frame.size.width;
    if(frame.origin.x != newRight)
    {
        frame.origin.x = newRight;
        self.frame = frame;
    }
}

- (CGFloat)dd_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setDd_bottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    CGFloat newBottom = bottom - frame.size.height;
    if(frame.origin.y != newBottom)
    {
        frame.origin.y = newBottom;
        self.frame = frame;
    }
}

- (CGFloat)dd_centerX
{
    return self.center.x;
}

- (void)setDd_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    if(center.x != centerX)
    {
        center.x = centerX;
        self.center = center;
    }
}

- (CGFloat)dd_centerY
{
    return self.center.y;
}

- (void)setDd_centerY:(CGFloat)centerY
{
    CGPoint center = self.center;
    if(center.y != centerY)
    {
        center.y = centerY;
        self.center = center;
    }
}

- (CGFloat)dd_width
{
    return self.frame.size.width;
}

- (void)setDd_width:(CGFloat)width
{
    if (isnan(width))
    {
        width = 0;
    }
    CGRect frame = self.frame;
    if(frame.size.width != width)
    {
        frame.size.width = width;
        self.frame = frame;
    }
}

- (CGFloat)dd_height
{
    return self.frame.size.height;
}

- (void)setDd_height:(CGFloat)height
{
    if (isnan(height))
    {
        height = 0;
    }
    CGRect frame = self.frame;
    if(frame.size.height != height)
    {
        frame.size.height = height;
        self.frame = frame;
    }
}

- (CGSize)dd_size
{
    return self.frame.size;
}

- (void)setDd_size:(CGSize)size
{
    CGRect frame = self.frame;
    if(CGSizeEqualToSize(frame.size, size) == NO)
    {
        frame.size = size;
        self.frame = frame;
    }
}

- (CGPoint)dd_origin
{
    return self.frame.origin;
}

- (void)setDd_origin:(CGPoint)origin
{
    CGRect frame = self.frame;
    if(CGPointEqualToPoint(frame.origin, origin) == NO)
    {
        frame.origin = origin;
        self.frame = frame;
    }
}

-(CGPoint)dd_center
{
    CGRect frame = self.frame;
    return CGPointMake(frame.size.width/2 + frame.origin.x, frame.size.height/2 + frame.origin.y);
}

-(void)setDd_center:(CGPoint)center
{
    CGRect frame = self.frame;
    self.frame = CGRectMake(center.x - frame.size.width / 2, center.y - frame.size.height / 2, frame.size.width, frame.size.height);
}


+ (id)dd_loadFromXIB
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
}

+ (id)dd_loadFromXIBName:(NSString *)xibName
{
    return [[[NSBundle mainBundle] loadNibNamed:xibName owner:nil options:nil] lastObject];
}

- (void)dd_createBordersWithColor:(UIColor * _Nonnull)color withCornerRadius:(CGFloat)radius andWidth:(CGFloat)width {
    self.layer.borderWidth = width;
    self.layer.cornerRadius = radius;
    self.layer.shouldRasterize = NO;
    self.layer.rasterizationScale = 2;
    self.layer.edgeAntialiasingMask = kCALayerLeftEdge | kCALayerRightEdge | kCALayerBottomEdge | kCALayerTopEdge;
    self.clipsToBounds = YES;
    self.layer.masksToBounds = YES;
    
    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
    CGColorRef cgColor = [color CGColor];
    self.layer.borderColor = cgColor;
    CGColorSpaceRelease(space);
}

- (UIView*)subViewOfClassName:(NSString*)className {
    for (UIView* subView in self.subviews) {
        if ([NSStringFromClass(subView.class) isEqualToString:className]) {
            return subView;
        }
        
        UIView* resultFound = [subView subViewOfClassName:className];
        if (resultFound) {
            return resultFound;
        }
    }
    return nil;
}


@end




