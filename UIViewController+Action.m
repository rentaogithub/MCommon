//
//  UIViewController+Action.m
//  MCommon
//
//  Created by 任 涛 on 14-3-3.
//  Copyright (c) 2014年 任 涛. All rights reserved.
//

#import "UIViewController+Action.h"
#import <objc/runtime.h>

const char *ActionBlockType = "NSActionBlock";

@implementation UIViewController (Action)

- (id)initWithBackToActionBlocks:(NSActionBlock)actBlocks {
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - add property actionBlock
- (void)setActionBlock:(NSActionBlock)actBlock {
    objc_setAssociatedObject(self, ActionBlockType, actBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSActionBlock)actionBlock{
    return objc_getAssociatedObject(self, ActionBlockType);
}

@end
