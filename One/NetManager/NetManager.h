//
//  NetManager.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseNetManager.h"
#import "HomeTextModel.h"

@interface NetManager : NSObject

+ (id)getHomeTextCompletionHandler:(void (^)(HomeTextModel *model, NSError *error))completionHandler;

@end
