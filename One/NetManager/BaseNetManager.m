//
//  BaseNetManager.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "BaseNetManager.h"

@implementation BaseNetManager

+ (id)GET:(NSString *)path parameters:(NSDictionary *)parameter completionHandler:(void (^)(id, NSError *))completionHandler{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 30;
    return [manager GET:path parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",task.currentRequest.URL.absoluteString);
        !completionHandler ?: completionHandler(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@, 错误:%@",task.currentRequest.URL.absoluteString, error);
        !completionHandler ?:completionHandler(nil, error);
        
    }];
}

+ (id)POST:(NSString *)path parameters:(NSDictionary *)parameter completionHandler:(void (^)(id, NSError *))completionHandler{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 30;
    return [manager POST:path parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",task.currentRequest.URL.absoluteString);
        !completionHandler ?: completionHandler(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@, 错误:%@",task.currentRequest.URL.absoluteString, error);
        !completionHandler ?:completionHandler(nil, error);
        
    }];
}

@end
