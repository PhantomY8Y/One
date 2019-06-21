//
//  UIScrollView+Refresh.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "UIScrollView+Refresh.h"

@implementation UIScrollView (Refresh)

- (void)addHeaderRefresh:(void(^)())handler{
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:handler];
}
- (void)beginHeaderRefresh{
    [self.mj_header beginRefreshing];
}
- (void)endHeaderRefresh{
    [self.mj_header endRefreshing];
}

- (void)addFooterRefresh:(void(^)())handler{
    self.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:handler];
}
- (void)endFooterRefresh{
    [self.mj_footer endRefreshing];
}
- (void)endFooterRefreshWithNoMoreData{
    [self.mj_footer endRefreshingWithNoMoreData];
}

//这样下拉刷新的时候才会重新判断
- (void)resetNoMoreData{
    [self.mj_footer resetNoMoreData];
}

@end
