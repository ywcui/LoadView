//
//  ViewController.m
//  LoadView
//
//  Created by City--Online on 15/11/5.
//  Copyright © 2015年 City--Online. All rights reserved.
//

#import "ViewController.h"
#import "CircleLoader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CircleLoader *view=[[CircleLoader alloc]initWithFrame:CGRectMake(100, 100, 70, 70)];
    //设置轨道颜色
    view.trackTintColor=[UIColor redColor];
    //设置进度条颜色
    view.progressTintColor=[UIColor greenColor];
    //设置轨道宽度
    view.lineWidth=5.0;
    //设置进度
    view.progressValue=0.7;
    //设置是否转到 YES进度不用设置
    view.animationing=YES;
    
    //添加中间图片  不设置则不显示
    view.centerImage=[UIImage imageNamed:@"yzp_loading"];
    
    //添加视图
    [self.view addSubview:view];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //视图隐藏
        //        [view hide];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
