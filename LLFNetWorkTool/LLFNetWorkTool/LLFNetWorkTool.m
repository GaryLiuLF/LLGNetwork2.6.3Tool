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

+ (void)get:(NSString *)url param:(id)param success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager GET:<#(nonnull NSString *)#> parameters:<#(nullable id)#> success:<#^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)success#> failure:<#^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)failure#>
}

@end
