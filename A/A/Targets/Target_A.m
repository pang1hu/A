//
//  Target_A.m
//  A
//
//  Created by 顶上优秀 on 2020/3/17.
//  Copyright © 2020 顶上优秀. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"


@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params{
    NSLog(@"呼呼呼呼呼");
    AViewController * viewController = [[AViewController alloc] init];
    return viewController;
}

@end
