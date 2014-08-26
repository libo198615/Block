//
//  NQViewController.m
//  BLOCK
//
//  Created by libo on 14-8-26.
//  Copyright (c) 2014年 NQ. All rights reserved.
//

#import "NQViewController.h"
#import "NSArray+enumerate.h"

@interface NQViewController ()

@end

@implementation NQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *array = @[@"a",@"b", @"c", @"d"];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
        if (*stop) {
            NSLog(@"%@ %d  yes",obj,idx);
        }else{
            NSLog(@"%@ %d  no",obj,idx);
        }
        
        if ([obj isEqualToString:@"c"]) {
            *stop = YES;
        }
    }];
    
    NSLog(@"=========================");

    [array enumerateObjectsUsingTestBlock:^(id testObj, NSUInteger index, BOOL *testStop) {
        if (*testStop) {
            NSLog(@"%@ %d  yes",testObj,index);
        }else{
            NSLog(@"%@ %d  no",testObj,index);
        }
        
        if ([testObj isEqualToString:@"a"]) {
            *testStop = NO;
        }
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
