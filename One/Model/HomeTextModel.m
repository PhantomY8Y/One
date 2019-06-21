//
//  HomeTextModel.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "HomeTextModel.h"

@implementation HomeTextModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data": [HomeTextDataModel class]};
}
@end

@implementation HomeTextDataModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"share_list": [HomeTextShare_ListModel class]};
}
@end

@implementation HomeTextShare_ListModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"wx": [HomeTextWxModel class], @"weibo": [HomeTextWeiboModel class], @"qq": [HomeTextQqModel class]};
}
@end

@implementation HomeTextWxModel

@end

@implementation HomeTextWeiboModel

@end

@implementation HomeTextQqModel

@end
