//
//  UIView+DrawBlock.h
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^UIDrawBlock)(CGRect rect,CGContextRef ctx);

@interface UIBlockView : UIView
@property(nonatomic,copy)UIDrawBlock drawBlock;
- (void)setDrawBlock:(UIDrawBlock)drawRectBlock;
@end

@interface UIBlockControl : UIControl
@property(nonatomic,copy)UIDrawBlock drawBlock;
- (void)setDrawBlock:(UIDrawBlock)drawRectBlock;
@end

@interface UIView (DrawBlock)
+ (id)viewWithFrame:(CGRect)frame drawBlocks:(UIDrawBlock)block;
@end


@interface UIControl (DrawBlock)
+ (id)controlWithFrame:(CGRect)frame drawBlocks:(UIDrawBlock)block;
@end
