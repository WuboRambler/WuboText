//
//  ViewController.m
//  WuboTextProject
//
//  Created by WuBo on 2017/7/27.
//  Copyright © 2017年 SZUDO. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    __weak typeof(self)weakSelf = self;
    
    self.button = ({
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.view).offset(200);
            make.width.equalTo(@100);
            make.height.equalTo(@60);
            make.centerX.equalTo(weakSelf.view);
        }];
        button;
    });
    [self createUI];
}

- (void)createUI
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
