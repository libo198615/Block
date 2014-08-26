//
//  NSArray+enumerate.h
//  BLOCK
//
//  Created by libo on 14-8-26.
//  Copyright (c) 2014年 NQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (enumerate)

- (void)enumerateObjectsUsingTestBlock:(void (^)(id testObj, NSUInteger index, BOOL *testStop))block;

@end
