//
//  UIScrollView+Refresh.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Refresh)

- (void)addHeaderRefresh:(void(^)())handler;
- (void)beginHeaderRefresh;
- (void)endHeaderRefresh;

- (void)addFooterRefresh:(void(^)())handler;
- (void)endFooterRefresh;
- (void)endFooterRefreshWithNoMoreData;
- (void)resetNoMoreData;

@end
