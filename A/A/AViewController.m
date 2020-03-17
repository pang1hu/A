//
//  AViewController.m
//  MainProject
//
//  Created by 顶上优秀 on 2020/3/17.
//  Copyright © 2020 顶上优秀. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 100);
    button.center = self.view.center;
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"pushB" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(pushB) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushB{
    UIViewController * viewController = [[CTMediator sharedInstance] B_viewControllerWithContextText:@"恍恍惚惚"];
    viewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
