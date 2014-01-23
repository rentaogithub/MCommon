//
//  UIView+Frame.h
//  MCommon
//
//  Created by 任 涛 on 14-1-23.
//  Copyright (c) 2014年 任 涛. All rights reserved.
//

#ifndef MCommon_Header_h
#define MCommon_Header_h

#define NSLogRect(rect) NSLog(@"%s x:%.4f, y:%.4f, w:%.4f, h:%.4f", #rect, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#define NSLogSize(size) NSLog(@"%s w:%.4f, h:%.4f", #size, size.width, size.height)
#define NSLogPoint(point) NSLog(@"%s x:%.4f, y:%.4f", #point, point.x, point.y)

#endif

#import <UIKit/UIKit.h>

@interface UIView (Frame)
@property (nonatomic, assign) CGPoint position;
@end

