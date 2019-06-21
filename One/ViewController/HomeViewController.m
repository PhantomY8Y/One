//
//  HomeViewController.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTextModel.h"
#import "HomeViewCell.h"
@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>
@property (nonatomic) UITableView *tableView;
@property (nonatomic) UIScrollView *sv;
@property (nonatomic) HomeTextModel *model;
@property (nonatomic) NSMutableArray<HomeTextDataModel *> *dataList;
@end

@implementation HomeViewController
#pragma mark 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"ONE";
    
    //请求数据
    MJWeakSelf
    //添加SV
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    self.sv = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.sv.pagingEnabled = YES;
    
    [self.view addSubview:self.sv];
    
    
    
    
    [NetManager getHomeTextCompletionHandler:^(HomeTextModel *model, NSError *error) {
        [weakSelf.sv.mj_header endRefreshing];
        if (error) {
            [weakSelf.sv.mj_header showProgressHUDWithText:[NSString stringWithFormat:@"%@",error.description] delay:1];
        }else{
            [weakSelf.dataList removeAllObjects];
            _model = model;
            [weakSelf.dataList addObjectsFromArray:model.data];
            [weakSelf.tableView reloadData];
            
            if (weakSelf.dataList.count > 0) {
                for (int i = 0; i < self.dataList.count; i ++) {
                    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(i * width, 0, width, height) style:UITableViewStylePlain];
                    [tableView registerClass:[HomeViewCell class] forCellReuseIdentifier:@"Cell"];
                    tableView.delegate = weakSelf;
                    tableView.dataSource = weakSelf;
                    [weakSelf.sv addSubview:tableView];
                    tableView.tag = i;
                    weakSelf.tableView = tableView;
                }
                weakSelf.sv.contentSize = CGSizeMake(width * self.dataList.count, height);
            }
            
            
        }
    }];
    
}
/*
 #pragma Delegate  UIScrollView
 - (void)scrollViewDidScroll:(UIScrollView *)scrollView{
 if (scrollView.contentOffset.y > 0 || scrollView.contentOffset.y < 0) {
 scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x, 0);
 }
 }
 */
#pragma Delegate  UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    HomeTextDataModel *model = self.dataList[tableView.tag];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //    cell.contentLb.text = model.hp_content;
    
    //content的行间距
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:model.hp_content];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:10];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [model.hp_content length])];
    cell.contentLb.attributedText = attributedString;
    
    cell.volLb.text = model.hp_title;
    cell.artistLb.text = model.hp_author;
    cell.dateLb.text = model.maketime;
    [cell.contentIV setImageURL:model.hp_img_original_url.pt_URL];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Dimension 尺寸
    return UITableViewAutomaticDimension;
}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 400;
//}


#pragma mark 懒加载
- (NSMutableArray<HomeTextDataModel *> *)dataList {
    if(_dataList == nil) {
        _dataList = [[NSMutableArray<HomeTextDataModel *> alloc] init];
    }
    return _dataList;
}

@end
