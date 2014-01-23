//
//  UIColor+Hex.h
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)
+ (UIColor *)colorFromCode:(int)hexCode;
+ (UIColor *)colorFromCode:(int)hexCode inAlpha:(float)alpha;
@end
