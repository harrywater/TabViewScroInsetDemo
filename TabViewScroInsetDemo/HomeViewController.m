//
//  HomeViewController.m
//  TabViewScroInsetDemo
//
//  Created by 王辉平 on 2018/7/18.
//  Copyright © 2018年 王辉平. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView* tabView;
@property(nonatomic,strong)NSThread* thread;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationController.navigationBar.translucent = YES;
    _tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tabView.dataSource = self;
    _tabView.contentSize = CGSizeMake(300, 190);
    _tabView.delegate = self;
    _tabView.backgroundColor = [UIColor greenColor];
    _tabView.contentInsetAdjustmentBehavior = NO;
    [self.view addSubview:_tabView];
//    self.automaticallyAdjustsScrollViewInsets = NO;
//#ifdef __IPHONE_11_0
//    if ([[[UIDevice currentDevice] systemVersion] compare:(@"11.0") options:NSNumericSearch] != NSOrderedAscending) {
//        if (@available(iOS 11.0, *)) {
//            _tabView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//        }
//    }
//#endif
   NSLog(@"viewDidLoad-self.view.frame.size.height=%f",self.view.frame.size.height);
//    NSLog(@"subViews=%@",self.navigationController.view.subviews);
    
//    self.tabView.contentInset = UIEdgeInsetsMake(0, 0, 64, 0);

}

- (void)viewWillLayoutSubviews
{
    NSLog(@"viewWillLayoutSubviews-self.view.frame.size.height=%f  \n inset=%@\ntableViewH=%f",self.view.frame.size.height,NSStringFromUIEdgeInsets(self.tabView.contentInset),self.tabView.frame.size.height);
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* indentifier = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
        
    }
    cell.textLabel.text = @"AAAAAAA";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

@end

