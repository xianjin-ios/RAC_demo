//
//  ViewController.m
//  RACDemo
//
//  Created by 孟现进 on 2018/3/20.
//  Copyright © 2018年 孟现进. All rights reserved.
//

#import "ViewController.h"
//导入RAC框架
#import "ReactiveObjC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    信号的三步骤：创建信号、订阅信号、发送信号
    //创建信号（刚创建时，未被订阅，称为冷信号）
    RACSignal *singal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {//subscriber订阅者
        //发送信号
        [subscriber sendNext:@"This is RAC"];
        return nil;
    }];
    //    订阅信号
    [singal subscribeNext:^(id  _Nullable x) {//x信号的内容
        NSLog(@"%@",x);
    }];

    
    
    
}



@end
