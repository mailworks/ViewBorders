//
//  UIView+ZMBorder.m
//  Pods
//
//  Created by mzeng on 2017/3/9.
//
//

#import "UIView+ZMBorder.h"

@implementation UIView (ZMBorder)

- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                         thickness:(CGFloat)thickness {
    CGFloat separateLine = thickness / [UIScreen mainScreen].scale;
    
    return [self zm_addAutolayoutBorder:edges color:color thickness:separateLine inset:0.0f];
    
}

- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                    logicThickness:(CGFloat)thickness {
    
    return [self zm_addAutolayoutBorder:edges color:color thickness:thickness inset:0.0f];
}

- (UIView *)zm_addAutolayoutBorder:(UIRectEdge)edges
                             color:(UIColor *)color
                         thickness:(CGFloat)thickness
                             inset:(CGFloat)inset {
    
    UIView * (^getBorder)(void) = ^UIView *{
        UIView *borderView = [UIView new];
        borderView.translatesAutoresizingMaskIntoConstraints = NO;
        borderView.backgroundColor = color;
        return borderView;
    };
    
    UIView *border = nil;
    if ((edges & UIRectEdgeTop) == UIRectEdgeTop  || (edges & UIRectEdgeAll) == UIRectEdgeAll) {
        UIView *top = getBorder();
        border = top;
        [self addSubview:top];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(0)-[top(==thickness)]"
                                                                     options:0
                                                                     metrics:@{@"thickness" : @(thickness)}
                                                                       views:@{@"top" : top}]];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-inset-[top]-inset-|"
                                                                     options:0
                                                                     metrics:@{@"inset":@(inset)}
                                                                       views:@{@"top" : top}]];
    }
    
    if ((edges & UIRectEdgeLeft) == UIRectEdgeLeft || (edges & UIRectEdgeAll) == UIRectEdgeAll) {
        UIView *left = getBorder();
        border = left;
        [self addSubview:left];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(0)-[left(==thickness)]"
                                                                     options:0
                                                                     metrics:@{@"thickness" : @(thickness)}
                                                                       views:@{@"left" : left}]];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-inset-[left]-inset-|"
                                                                     options:0
                                                                     metrics:@{@"inset":@(inset)}
                                                                       views:@{@"left" : left}]];
    }
    
    if ((edges & UIRectEdgeRight) == UIRectEdgeRight || (edges & UIRectEdgeAll) == UIRectEdgeAll) {
        UIView *right = getBorder();
        border = right;
        [self addSubview:right];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[right(==thickness)]-(0)-|"
                                                                     options:0
                                                                     metrics:@{@"thickness" : @(thickness)}
                                                                       views:@{@"right" : right}]];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-inset-[right]-inset-|"
                                                                     options:0
                                                                     metrics:@{@"inset":@(inset)}
                                                                       views:@{@"right" : right}]];
    }
    
    if ((edges & UIRectEdgeBottom) == UIRectEdgeBottom || (edges & UIRectEdgeAll) == UIRectEdgeAll) {
        UIView *bottom = getBorder();
        border = bottom;
        [self addSubview:bottom];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[bottom(==thickness)]-(0)-|"
                                                                     options:0
                                                                     metrics:@{@"thickness" : @(thickness)}
                                                                       views:@{@"bottom" : bottom}]];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-inset-[bottom]-inset-|"
                                                                     options:0
                                                                     metrics:@{@"inset":@(inset)}
                                                                       views:@{@"bottom" : bottom}]];
    }
    
    return border;
}


@end
