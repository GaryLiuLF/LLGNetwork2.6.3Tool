//
//  LLFNetWorkTool.h
//  LLFNetWorkTool
//
//  Created by Apple on 16/12/2.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLFNetWorkTool : NSObject


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
