//
//  NetManager.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "NetManager.h"
#import "NSObject+Parse.h"

#define kOneHomePath @"http://v3.wufazhuce.com:8000/api/hp/more/0?platform=ios&version=v3.5.3&user_id=7529044"

@implementation NetManager

+ (id)getHomeTextCompletionHandler:(void (^)(HomeTextModel *, NSError *))completionHandler {
    
    return [BaseNetManager GET:kOneHomePath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([HomeTextModel parse:responseObj], error);
    }];
    
}
@end
