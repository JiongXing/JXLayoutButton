//
//  ViewController.m
//  JXLayoutButtonDemo
//
//  Created by JiongXing on 16/9/24.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import "ViewController.h"
#import "JXLayoutButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat margin = 20;
    CGFloat buttonWidth = (CGRectGetWidth(self.view.frame) - 20 * 3) / 2.0;
    CGFloat buttonHeight = buttonWidth;
    
    [self addButton: [self generateButtonWithStyle:JXLayoutButtonStyleUpImageDownTitle]
           withFrame:CGRectMake(margin, 64 + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:JXLayoutButtonStyleUpTitleDownImage]
          withFrame:CGRectMake(margin + buttonWidth + margin, 64 + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:JXLayoutButtonStyleLeftImageRightTitle]
          withFrame:CGRectMake(margin, 64 + margin + buttonHeight + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:JXLayoutButtonStyleLeftTitleRightImage]
          withFrame:CGRectMake(margin + buttonWidth + margin, 64 + margin + buttonHeight + margin, buttonWidth, buttonHeight)];
    
    JXLayoutButton *customSizeButton = [self generateButtonWithStyle:JXLayoutButtonStyleUpImageDownTitle];
    [customSizeButton setTitle:@"SmallSize" forState:UIControlStateNormal];
    customSizeButton.imageSize = CGSizeMake(100 / 4, 140 / 4);
    [self addButton:customSizeButton
          withFrame:CGRectMake((CGRectGetWidth(self.view.frame) - buttonWidth) / 2.0, 64 + margin * 3 + buttonHeight * 2, buttonWidth, buttonHeight)];
}

- (JXLayoutButton *)generateButtonWithStyle:(JXLayoutButtonStyle)style {
    JXLayoutButton *button = [JXLayoutButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"luffy"] forState:UIControlStateNormal];
    [button setTitle:@"Luffy" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    button.layoutStyle = style;
    
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor magentaColor].CGColor;
    return button;
}

- (void)addButton:(JXLayoutButton *)button withFrame:(CGRect)frame {
    button.frame = frame;
    [self.view addSubview:button];
}

@end
