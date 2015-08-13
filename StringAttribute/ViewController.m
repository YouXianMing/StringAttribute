//
//  ViewController.m
//  StringAttribute
//
//  Created by YouXianMing on 15/8/13.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "StringAttributeHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 文本
    NSString *showString = @"NoZuoNoDie";
    
    // 全局设置
    FontAttribute *fullFont = [FontAttribute new];
    fullFont.font           = [UIFont fontWithName:@"AppleSDGothicNeo-UltraLight" size:32.f];
    fullFont.effectRange    = NSMakeRange(0, showString.length);
    
    ForegroundColorAttribute *fullColor = [ForegroundColorAttribute new];
    fullColor.color                     = [UIColor blackColor];
    fullColor.effectRange               = NSMakeRange(0, showString.length);
    
    // 局部设置
    FontAttribute *partFont = [FontAttribute new];
    partFont.font           = [UIFont fontWithName:@"AppleSDGothicNeo-UltraLight" size:20.f];
    partFont.effectRange    = NSMakeRange(0, 2);
    
    ForegroundColorAttribute *redColor = [ForegroundColorAttribute new];
    redColor.color                     = [UIColor redColor];
    redColor.effectRange               = NSMakeRange(0, 2);
    
    // 显示的label
    UILabel *label       = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 30)];
    label.center         = self.view.center;
    label.textAlignment  = NSTextAlignmentCenter;
    label.attributedText = [showString mutableAttributedStringWithStringAttributes:@[fullFont,
                                                                                     partFont,
                                                                                     fullColor,
                                                                                     redColor]];
    
    [self.view addSubview:label];
}

@end
