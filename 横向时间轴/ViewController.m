//
//  ViewController.m
//  横向时间轴
//
//  Created by 宇玄丶 on 2016/11/11.
//  Copyright © 2016年 anqianmo. All rights reserved.
//

#import "ViewController.h"
#import "TimeLineView.h" // 横向时间轴

//屏幕尺寸
#define kScreenSize           [[UIScreen mainScreen] bounds].size
//屏幕宽度
#define kScreenWidth          [[UIScreen mainScreen] bounds].size.width
//屏幕高度
#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 横向时间轴
    TimeLineView *lineView = [[TimeLineView alloc]initWithFrame:CGRectMake(0, 100, kScreenWidth, 80) WithCompleCount:3];
    [self.view addSubview:lineView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
