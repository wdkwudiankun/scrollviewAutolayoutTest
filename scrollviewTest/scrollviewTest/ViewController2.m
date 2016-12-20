//
//  ViewController2.m
//  scrollviewTest
//
//  Created by huangqibiao on 2016/12/20.
//  Copyright © 2016年 huangqibiao. All rights reserved.
//

#import "ViewController2.h"

#import <Masonry.h>

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollV = [UIScrollView new];
    [self.view addSubview:scrollV];
    [scrollV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    
    UIView *contentV = [UIView new];
    [scrollV addSubview:contentV];
    [contentV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollV);
        make.width.equalTo(scrollV);
    }];

    
    UILabel *lable1 = [UILabel new];
    lable1.backgroundColor = [UIColor greenColor];
    lable1.numberOfLines = 0;
    lable1.textColor = [UIColor redColor];
    lable1.text = @"iOS是由苹果公司开发的移动操作系统[1]  。苹果公司最早于2007年1月9日的Macworld大会上公布这个系统，最初是设计给iPhone使用的，后来陆续套用到iPod touch、iPad以及Apple TV等产品上。iOS与苹果的Mac OS X操作系统一样，属于类Unix的商业操作系统。原本这个系统名为iPhone OS，因为iPad，iPhone，iPod touch都使用iPhone OS，所以2010WWDC大会上宣布改名为iOS（iOS为美国Cisco公司网络设备操作系统注册商标，苹果改名已获得Cisco公司授权）。\n2016年1月，随着9.2.1版本的发布，苹果修复了一个存在了3年的漏洞。该漏洞在iPhone或iPad用户在酒店或者机场等访问带强制门户的网络时，登录页面会通过未加密的HTTP连接显示网络使用条款。在用户接受条款后，即可正常上网，但嵌入浏览器会将未加密的Cookie分享给Safari浏览器。利用这种分享的资源，黑客可以创建自主的虚假强制门户，并将其关联至WiFi网络，从而窃取设备上保存的任何未加密Cookie。[2] ";
    [contentV addSubview:lable1];
    
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@10);
        make.left.right.equalTo(contentV);
    }];
    
    UILabel *lable2 = [UILabel new];
    lable2.numberOfLines = 0;
    lable2.textColor = [UIColor brownColor];
    lable2.backgroundColor = [UIColor greenColor];
    [contentV addSubview:lable2];
    lable2.text = @"苹果至今仍没有宣布任何让iPhone运行Java的计划。但太阳微系统已宣布其将会发布能在iPhone上运行的Java虚拟机(JVM)的计划，它是基于Java的Micro Edition版本。这将让用Java应用程序得以在iPhone和iPod Touch上运行。在这个计划发表之后,熟悉iOS软件开发协议的程序员们相信虽然iOS软件开发协议不允许应用程序后台运行(比如说在接电话的时候仍然运行程序), 但却允许自带的应用程序从其他的来源下载代码，而且它们还能与第三方应用程序相互作用(比如说Safari和Java虚拟机), 这可能会阻碍不与苹果合作的Java虚拟机的发展。 很明显，在iPhone运行的Java在iOS软件开发协议所规定的范畴以外。Swift是苹果公司在WWDC2014上发布的全新开发语言。从演示视频及随后在appstore上线的标准文档看来，语法内容混合了OC,JS,Python，语法简单，使用方便，并可与OC混合使用。作为一项苹果独立发布的支持型开发语言，已经有了数个应用演示及合作开发公司的测试，相信将在未来得到更广泛的应用。某种意义上Swift作为苹果的新商业战略，将吸引更多的开发者入门，从而增强App Store和Mac Store本来就已经实力雄厚的应用数量基础。Siri 让你能够利用语音来完成发送信息、安排会议、查看最新比分等更多事务。只要说出你想做的事，Siri 就能帮你办到。Siri 可以听懂你说的话、知晓你的心意，甚至还能有所回应。iOS 7 中的 Siri 拥有新外观、新声音和新功能。它的界面经过重新设计，以淡入视图浮现于任意屏幕画面的最上层。Siri 回答问题的速度更快，还能查询更多信息源，如维基百科。它可以承担更多任务，如回电话、播放语音邮件、调节屏幕亮度，以及更多";
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(lable1);
        make.top.equalTo(lable1.mas_bottom).offset(40);
    }];
    
    UIImageView *imageV = [[UIImageView alloc]initWithImage:[[UIImage imageNamed:@"img.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [contentV addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lable2.mas_bottom).offset(40);
        make.centerX.equalTo(contentV.mas_centerX);
    }];
    
    [contentV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(imageV.mas_bottom).offset(40);
    }];
}



@end
