//
//  ViewController.m
//  TabViewScroInsetDemo
//
//  Created by 王辉平 on 2018/7/18.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)IBOutlet UITableView* tabView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tabView.contentInsetAdjustmentBehavior = NO;
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(40, 0, 100, 45)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
