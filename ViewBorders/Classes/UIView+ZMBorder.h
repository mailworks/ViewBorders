//
//  UIView+ZMBorder.h
//  Pods
//
//  Created by mzeng on 2017/3/9.
//
//

#import <UIKit/UIKit.h>

@interface UIView (ZMBorder)

/**
 *  添加可选的(上下左右)边框
 *
 *  @param edges     类型 上、下、左、右
 *  @param colour    边框颜色
 *  @param thickness 边框宽度
 *
 *  @return borderView
 */
- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                         thickness:(CGFloat)thickness;


/**
 添加可选的(上下左右)边框
 
 @param edges 类型 上、下、左、右
 @param color 边框颜色
 @param thickness 边框宽度像素值 已经考虑了不同屏幕像素密度 thickness / [UIScreen mainScreen].scale
 @return borderView
 */
- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                    logicThickness:(CGFloat)thickness;


/**
 *  添加可选的(上下左右)边框
 *
 *  @param edges     类型 上、下、左、右
 *  @param color     边框颜色
 *  @param thickness 边框宽度
 *  @param inset     偏移量
 *
 *  @return borderView
 */
- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                         thickness:(CGFloat)thickness
                             inset:(CGFloat)inset;

@end
