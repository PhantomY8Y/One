//
//  NSString+PT.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "NSString+PT.h"

@implementation NSString (PT)

- (NSURL *)pt_URL{
    return [NSURL URLWithString:self];
}

@end
