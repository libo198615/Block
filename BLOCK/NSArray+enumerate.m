//
//  NSArray+enumerate.m
//  BLOCK
//
//  Created by libo on 14-8-26.
//  Copyright (c) 2014年 NQ. All rights reserved.
//

#import "NSArray+enumerate.h"

@implementation NSArray (enumerate)

- (void)enumerateObjectsUsingTestBlock:(void (^)(id testObj, NSUInteger index, BOOL *testStop))block{
    __block BOOL enumer;
    static int i = 0;
    enumer = YES;
    while (&enumer && self.count >i) {
        block(self[i], i, &enumer);
        i++;
    }
}

@end
