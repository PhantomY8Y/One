//
//  NSObject+Parse.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit.h>

@interface NSObject (Parse) <YYModel>

+ (id)parse:(id)json;

@end