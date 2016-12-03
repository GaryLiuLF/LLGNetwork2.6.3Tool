//
//  ViewController.m
//  LLFNetWorkTool
//
//  Created by Apple on 16/12/2.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import "ViewController.h"
#import "LLFNetWorkTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSDictionary *param = @{}; // 添加参数
    NSString *url = @"";
    
    [LLFNetWorkTool post:url
                   param:param
                 success:^(NSDictionary *responseDic) {
                     NSLog(@"%@", responseDic);
                 } failure:^(NSError *error) {
                     NSLog(@"%@",error);
                 }];
}

@end
