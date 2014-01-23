//
//  UIImage+Stretch.h
//  MCommon
//
//  Created by 任 涛 on 13-7-10.
//  Copyright (c) 2013年 任 涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Stretch)
+ (UIImage *)stretchImage:(UIImage *)image withLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight capInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode;
@end
