//
//  UIViewController+Action.h
//  MCommon
//
//  Created by 任 涛 on 14-3-3.
//  Copyright (c) 2014年 任 涛. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^NSActionBlock)(id param);

@interface UIViewController (Action)

@property(nonatomic,strong)NSActionBlock actionBlock;

- (id)initWithBackToActionBlocks:(NSActionBlock)actBlocks;

@end
