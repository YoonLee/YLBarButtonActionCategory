//
//  NSObject+Category.m
//  Yoon Lee
//
//  Created by Yoon Lee on 3/3/15.
//  Copyright (c) 2015 Yoon Lee. All rights reserved.
//

#import "NSObject+Category.h"

@implementation NSObject (Category)

- (void)YLActionBlock
{
    ((void (^)())self)();
}

- (void)YLActionSelectorBlockWithSender:(id)sender
{
    ((void (^)(id))self)(sender);
}

@end
