//
//  UIView+DrawBlock.m
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#import "UIView+DrawBlock.h"

@implementation UIBlockView

- (void)setDrawBlock:(UIDrawBlock)drawRectBlock{
    _drawBlock = [drawRectBlock copy];
}

- (void)drawRect:(CGRect)rect{
    if (_drawBlock) {
        _drawBlock(rect,UIGraphicsGetCurrentContext());
    }
}

@end

@implementation UIBlockControl

- (void)setDrawBlock:(UIDrawBlock)drawRectBlock{
    _drawBlock = [drawRectBlock copy];
}

- (void)drawRect:(CGRect)rect{
    if (_drawBlock) {
        _drawBlock(rect,UIGraphicsGetCurrentContext());
    }
}

@end

@implementation UIView (DrawBlock)

+ (id)viewWithFrame:(CGRect)frame drawBlocks:(UIDrawBlock)block{
    UIBlockView *blockView = [[UIBlockView alloc] initWithFrame:frame];
    [blockView setDrawBlock:block];
    return blockView;
}

@end

@implementation UIControl (DrawBlock)
+ (id)controlWithFrame:(CGRect)frame drawBlocks:(UIDrawBlock)block{
    UIBlockControl *blockControl = [[UIBlockControl alloc] initWithFrame:frame];
    [blockControl setDrawBlock:block];
    return blockControl;
}

@end
