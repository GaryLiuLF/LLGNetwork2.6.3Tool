//
//  LLFNetWorkTool.h
//  LLFNetWorkTool
//
//  Created by Apple on 16/12/2.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLFNetWorkTool : NSObject

/***
 注意：
 其中当前使用AFN版本是2.6.3,
 Podfile中要改版本为
 platform :ios,'8.0'
 pod 'AFNetworking', '~>2.6.3'
 不然安装的是最新版的
 
 因3.0的AFNetowrking使用AFHttpSessionManager代替
 ***/


/**
 GET请求

 @param url 请求地址
 @param param 请求参数
 @param success 成功返回的值
 @param failure 失败返回的值
 */
+ (void)get:(NSString *)url
      param:(id)param
    success:(void(^)(NSDictionary *))success
    failure:(void(^)(NSError *))failure;

/**
 POST请求

 @param url 请求地址
 @param param 请求参数
 @param success 成功返回的值
 @param failure 失败返回的值
 */
+ (void)post:(NSString *)url
       param:(id)param
     success:(void(^)(NSDictionary *))success
     failure:(void(^)(NSError *))failure;


@end
