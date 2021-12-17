//
//  UIView+AZGradient.h
//  AZCategory
//
//  Created by Alfred Zhang on 2017/6/29.
//  Copyright © 2017年 Alfred Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AZGradient)

/* The array of CGColorRef objects defining the color of each gradient
 * stop. Defaults to nil. Animatable. */

@property(nullable, copy) NSArray *az_colors;

/* An optional array of NSNumber objects defining the location of each
 * gradient stop as a value in the range [0,1]. The values must be
 * monotonically increasing. If a nil array is given, the stops are
 * assumed to spread uniformly across the [0,1] range. When rendered,
 * the colors are mapped to the output colorspace before being
 * interpolated. Defaults to nil. Animatable. */

@property(nullable, copy) NSArray<NSNumber *> *az_locations;

/* The start and end points of the gradient when drawn into the layer's
 * coordinate space. The start point corresponds to the first gradient
 * stop, the end point to the last gradient stop. Both points are
 * defined in a unit coordinate space that is then mapped to the
 * layer's bounds rectangle when drawn. (I.e. [0,0] is the bottom-left
 * corner of the layer, [1,1] is the top-right corner.) The default values
 * are [.5,0] and [.5,1] respectively. Both are animatable. */

@property CGPoint az_startPoint;
@property CGPoint az_endPoint;

+ (UIView *_Nullable)az_gradientViewWithColors:(NSArray<UIColor *> *_Nullable)colors locations:(NSArray<NSNumber *> *_Nullable)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

- (void)az_setGradientBackgroundWithColors:(NSArray<UIColor *> *_Nullable)colors locations:(NSArray<NSNumber *> *_Nullable)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end


@interface UIView (Extension)

@property (nonatomic) CGFloat dd_left;

@property (nonatomic) CGFloat dd_top;

@property (nonatomic) CGFloat dd_right;

@property (nonatomic) CGFloat dd_bottom;

@property (nonatomic) CGFloat dd_width;

@property (nonatomic) CGFloat dd_height;

@property (nonatomic) CGFloat dd_centerX;

@property (nonatomic) CGFloat dd_centerY;

@property (nonatomic) CGPoint dd_origin;

@property (nonatomic) CGSize dd_size;

@property (nonatomic) CGPoint dd_center;



+ (id _Nullable )dd_loadFromXIB;

+ (id _Nullable )dd_loadFromXIBName:(NSString *_Nullable)xibName;

- (void)dd_createBordersWithColor:(UIColor * _Nonnull)color withCornerRadius:(CGFloat)radius andWidth:(CGFloat)width;

- (id _Nullable )subViewOfClassName:(NSString*_Nonnull)className;
@end

