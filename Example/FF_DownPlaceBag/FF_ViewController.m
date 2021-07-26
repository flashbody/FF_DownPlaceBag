//
//  FF_ViewController.m
//  FF_DownPlaceBag
//
//  Created by flashbody@foxmail.com on 07/26/2021.
//  Copyright (c) 2021 flashbody@foxmail.com. All rights reserved.
//

#import "FF_ViewController.h"
#import "FF_DownPlaceBag.h"

@interface FF_ViewController ()

@end

@implementation FF_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 解压本地zip包
//    [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"www/12.png"];
    NSString * path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"com.bonade.h5.xqcmall.zip"];
    [[FF_DPBH5Manage shareManager] startUnzipH5FileZip:path FileName:@"com.bonade.h5.xqcmall" finishBlock:^(BOOL sucess) {
        NSLog(@"解压本地zip包 ==%d", sucess);
    }];
    //    //下载资源包Zip, app启动时调用
//    [[FF_DPBH5Manage shareManager] FF_DPBLoadH5PackageWithUrl:@"https://beta.shanglike.com/bnd-admin/v1/version/h5/packages" header:nil parameters:@{@"packageNames" :@[@"com.bonade.h5.xxf.life"],@"appId": @"", @"appVersion" : @""} method:@"POST" andPackageName:@"com.bonade.h5.xxf.life" andCompetetion:^(BOOL result) {
//        if (result) {
//            //下载解压成功
//            NSLog(@"=======");
//        }else
//        {
//            //失败
//            NSLog(@"===222222=");
//        }
//
//    }];
    [FF_DPBH5Manage shareManager].isLog = true;
    NSString * urlstr =    [NSString stringWithFormat:@"%@/bnd-admin/v1/version/h5/packages", @"https://beta.shanglike.com"];
    [[FF_DPBH5Manage shareManager] FF_DPBLoadH5PackageWithUrl:urlstr header:nil parameters:@{@"packageNames" :@[@"com.bonade.h5.xxf.welfare"], @"appId": @"", @"appVersion" : @""} method:@"POST" andPackageName:@"com.bonade.h5.xxf.welfare" andVersionCompetetion:^(BOOL result, NSString *version) {
        if (result) {
            //下载解压成功
            NSLog(@"==下载解压成功:%@=====version:%@",@"com.bonade.h5.xxf.life", version);

        }else
        {
            //失败
        }
         
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
