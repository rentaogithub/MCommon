//
//  UIView+Frame.m
//  MCommon
//
//  Created by 任 涛 on 14-1-23.
//  Copyright (c) 2014年 任 涛. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
- (CGPoint)position {
    return self.frame.origin;
}

- (void)setPosition:(CGPoint)vposition {
    self.frame = (CGRect){vposition, self.frame.size};
}
@end
