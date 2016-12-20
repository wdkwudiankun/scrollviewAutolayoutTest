//
//  ViewController1.m
//  scrollviewTest
//
//  Created by huangqibiao on 2016/12/20.
//  Copyright © 2016年 huangqibiao. All rights reserved.
//

#import "ViewController1.h"

#import <Masonry.h>

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollV = [UIScrollView new];
    scrollV.backgroundColor = [UIColor blueColor];
    [self.view addSubview:scrollV];
    [scrollV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
        make.width.equalTo(self.view);
    }];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"---------button------------" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor magentaColor];
    [scrollV addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(@10);
        // make.right.equalTo(self.view).offset(-10); // 可行
        // make.width.equalTo(scrollV).offset(-20);   // 可行
        // make.right.equalTo(@-10);                  // 不可行
        make.width.equalTo(scrollV).offset(-20);
        make.height.equalTo(@30);
    }];
    
    UIImageView *imageV = [[UIImageView alloc]init];
    [scrollV addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@-20);
        make.height.equalTo(imageV.mas_height);
        make.top.equalTo(button.mas_bottom);
    }];
    
    UIView *yellowVIew = [[UIView alloc]init];
    yellowVIew.backgroundColor = [UIColor yellowColor];
    [scrollV addSubview:yellowVIew];
    [yellowVIew mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(button);
        make.top.equalTo(imageV.mas_bottom).offset(30);
        make.height.equalTo(@400);
        
    }];
    
    
    UITextView *textView = [UITextView new];
    [scrollV addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(yellowVIew);
        make.top.equalTo(yellowVIew.mas_bottom).offset(20);
        make.height.equalTo(@300);
    }];
    [scrollV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(textView.mas_bottom).offset(70);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
