//
//  CustomView.h
//  ViewFrameAndCallBack
//
//  Created by yokotasan on 2015/04/19.
//  Copyright (c) 2015年 yokotasan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MyCustomBlock)(void);

@interface CustomView : UIView

@property (nonatomic) UIButton *button;

@property (nonatomic, copy) MyCustomBlock customBlock;

@end
