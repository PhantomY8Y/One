//
//  HomeViewCell.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCell.h"

@interface HomeViewCell : BaseCell

//装控件的View
@property (nonatomic) UIView *borderView;
//图片IV
@property (nonatomic) UIImageView *contentIV;
//期数
@property (nonatomic) UILabel *volLb;
//作者
@property (nonatomic) UILabel *artistLb;
//内容
@property (nonatomic) UILabel *contentLb;
//日期
@property (nonatomic) UILabel *dateLb;

@end
