//
//  LLFNetWorkTool.m
//  LLFNetWorkTool
//
//  Created by Apple on 16/12/2.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import "LLFNetWorkTool.h"
#import <AFNetworking.h>

@implementation LLFNetWorkTool


#pragma mark - GET
+ (void)get:(NSString *)url param:(id)param success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:param success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        if (success) {
            NSError *error;
            NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
            if (error) {
                NSLog(@"json解析失败：%@",error);
            }
            success(responseDic);
        }
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark - POST
+ (void)post:(NSString *)url param:(id)param success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/csv",@"application/json",@"text/json", @"text/plain", @"text/html", nil];
    [manager POST:url parameters:param success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        if (success) {
            NSError *error;
            NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
            if (error) {
                NSLog(@"json解析失败：%@", error);
            }
            success(responseDic);
        }
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
