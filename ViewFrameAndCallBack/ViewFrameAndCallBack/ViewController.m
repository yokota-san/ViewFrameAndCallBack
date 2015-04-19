//
//  ViewController.m
//  ViewFrameAndCallBack
//
//  Created by yokotasan on 2015/04/19.
//  Copyright (c) 2015年 yokotasan. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomView *custom = [CustomView new];
    [self.view addSubview:custom];
    self.view.backgroundColor = [UIColor yellowColor];
    custom.customBlock = ^{
        [self presentViewController:[[ViewController alloc] init] animated:YES completion:nil];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
