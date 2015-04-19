//
//  CustomView.m
//  ViewFrameAndCallBack
//
//  Created by yokotasan on 2015/04/19.
//  Copyright (c) 2015年 yokotasan. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = [UIColor blackColor];
        self.frame =  CGRectMake(0, 100, 500, 20);
        _button = [[UIButton alloc] initWithFrame:CGRectMake(50, 0, 100, 100)];
        _button.backgroundColor = [UIColor greenColor];
        [self addSubview:_button];
        [_button addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    

}

- (void)test
{
    NSLog(@"touched");
    if(_customBlock){
        _customBlock();
    }
}

@end
