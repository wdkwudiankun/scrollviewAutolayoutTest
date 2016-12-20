//
//  ViewController.m
//  scrollviewTest
//
//  Created by huangqibiao on 2016/12/20.
//  Copyright © 2016年 huangqibiao. All rights reserved.
//

#import "ViewController.h"

#import <Masonry.h>

@interface ViewController ()


@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) UIView *redView;

@property (nonatomic, strong) UIView *blueView;

@property (nonatomic, strong) UIView *yellowView;

@property (nonatomic, strong) UIView *magenView;

@property (nonatomic, strong) UIView *grayView;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [[UIScrollView alloc]init];
    [self.view addSubview:_scrollView];
    
    _redView = [[UIView alloc]init];
    _redView.backgroundColor = [UIColor redColor];
    [_scrollView addSubview:_redView];
    
    _blueView = [[UIView alloc]init];
    _blueView.backgroundColor = [UIColor blueColor];
    [_scrollView addSubview:_blueView];
    
    _yellowView = [[UIView alloc]init];
    _yellowView.backgroundColor = [UIColor yellowColor];
    [_scrollView addSubview:_yellowView];
    
    _magenView = [UIView new];
    _magenView.backgroundColor = [UIColor magentaColor];
    [_scrollView addSubview:_magenView];
    
    _grayView = [UIView new];
    _grayView.backgroundColor = [UIColor grayColor];
    [_scrollView addSubview:_grayView];
    
    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(@0);
        make.right.equalTo(self.view);
        make.height.equalTo(@300);
    }];
    
    [_blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(_redView);
        make.top.equalTo(_redView.mas_bottom);
        make.height.equalTo(@200);
    }];
    
    [_yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(_blueView);
        make.top.equalTo(_blueView.mas_bottom);
        make.height.equalTo(@450);
    }];
    
    [_magenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(_yellowView);
        make.top.equalTo(_yellowView.mas_bottom);
    }];
    
    [_grayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(_magenView);
        make.top.equalTo(_magenView.mas_bottom);
        make.height.equalTo(@150);
    }];
    
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
        make.bottom.greaterThanOrEqualTo(_grayView.mas_bottom).offset(20);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
