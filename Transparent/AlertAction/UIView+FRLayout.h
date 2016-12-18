//
//  UIView+Layout.h
//  FirerageKit
//
//  Created by Aidian.Tang on 14-5-21.
//  Copyright (c) 2014年 Illidan.Firerage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FRLayout)

/**
 *  Init Methods
 */

- (id)initWithSize:(CGSize)size;
- (void)removeAllSubviews;

/**
 *  Frame Methods
 */

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;

/**
 *  AutoLayout
 */

- (void)centerInView:(UIView *)view;
- (void)centerHorizontallyInView:(UIView *)view;
- (void)centerVerticallyInView:(UIView *)view;

@end
