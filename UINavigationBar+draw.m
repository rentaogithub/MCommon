//
//  UINavigationBar+draw.m
//  commonStat
//
//  Created by 任 涛 on 13-7-2.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#import "UINavigationBar+draw.h"
#import "UIView+DrawBlock.h"

@implementation UINavigationBar (draw)
- (void)setBackgroundImageAfterFive{
    [self setBackgroundImageAfterFive:@"topbar"];
}

- (void)setBackgroundImageAfterFive:(NSString *)simage{
    if (floor(NSFoundationVersionNumber) >= NSFoundationVersionNumber_iOS_5_0){//ios5
        [self setBackgroundImage:[UIImage imageNamed:simage] forBarMetrics:UIBarMetricsDefault];
    }else{
        [UINavigationBar viewWithFrame:CGRectMake(0, 0, 320, 44) drawBlocks:^(CGRect rect, CGContextRef ctx) {
            UIImage *img = [UIImage imageNamed:simage];
            [img drawInRect:rect];
        }];
    }
}

@end
