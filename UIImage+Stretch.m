//
//  UIImage+Private.m
//  MCommon
//
//  Created by 任 涛 on 13-7-10.
//  Copyright (c) 2013年 任 涛. All rights reserved.
//

#import "UIImage+Stretch.h"

@implementation UIImage (Stretch)
+ (UIImage *)stretchImage:(UIImage *)image withLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight capInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode {
    UIImage *resultImage = nil;
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_4_3) {
        resultImage = [image stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight];
    } else {
        if(floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_5_1) {
            resultImage = [image resizableImageWithCapInsets:capInsets];
        } else {
            resultImage = [image resizableImageWithCapInsets:capInsets resizingMode:resizingMode];
        }
    }
    return resultImage;
}
@end
