//
//  HomeViewCell.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "HomeViewCell.h"
#import <Masonry.h>


//浅灰色
#define kLabelColor [UIColor colorWithRed:156/255.0 green:156/255.0 blue:156/255.0 alpha:1]
//浅灰偏黑
#define kContentColor [UIColor colorWithRed:110/255.0 green:110/255.0 blue:110/255.0 alpha:1]

#import "HomeViewCell.h"

@implementation HomeViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (UIView *)borderView {
    if(_borderView == nil) {
        _borderView = [[UIView alloc] init];
        [self.contentView addSubview:_borderView];
        [_borderView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(UIEdgeInsetsMake(15, 15, 15, 15));
        }];
        _borderView.backgroundColor = [UIColor whiteColor];
        
        _borderView.layer.cornerRadius = 4;
        
        //阴影颜色
        _borderView.layer.shadowColor = [UIColor blackColor].CGColor;
        _borderView.layer.shadowOffset = CGSizeMake(0, 0);
        _borderView.layer.shadowOpacity = 0.6;
        _borderView.layer.shadowRadius = 4;
    }
    return _borderView;
}

- (UIImageView *)contentIV {
    if(_contentIV == nil) {
        _contentIV = [[UIImageView alloc] init];
        [self.borderView addSubview:_contentIV];
        [_contentIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(5);
            make.centerX.equalTo(0);
            //569：427
            make.height.equalTo(_contentIV.mas_width).dividedBy(1.333);
        }];
        
    }
    return _contentIV;
}

- (UILabel *)volLb {
    if(_volLb == nil) {
        _volLb = [[UILabel alloc] init];
        [self.borderView addSubview:_volLb];
        [_volLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(5);
            make.top.equalTo(self.contentIV.mas_bottom).offset(10);
            make.width.equalTo(65);
        }];
        _volLb.font = [UIFont systemFontOfSize:11];
        _volLb.textColor = kLabelColor;
    }
    return _volLb;
}

- (UILabel *)artistLb {
    if(_artistLb == nil) {
        _artistLb = [[UILabel alloc] init];
        [self.borderView addSubview:_artistLb];
        [_artistLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.volLb.mas_centerY);
            make.right.equalTo(-5);
            make.left.equalTo(self.volLb.mas_right).offset(5);
            
        }];
    }
    _artistLb.font = [UIFont systemFontOfSize:10];
    _artistLb.textColor = kLabelColor;
    _artistLb.textAlignment = NSTextAlignmentRight;
    return _artistLb;
}

- (UILabel *)contentLb {
    if(_contentLb == nil) {
        _contentLb = [[UILabel alloc] init];
        [self.borderView addSubview:_contentLb];
        [_contentLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(11);
            make.centerX.equalTo(0);
            make.top.equalTo(self.contentIV.mas_bottom).equalTo(45);
        }];
        _contentLb.numberOfLines = 0;
        _contentLb.textColor = kContentColor;
        _contentLb.font = [UIFont systemFontOfSize:14];
    }
    return _contentLb;
}

- (UILabel *)dateLb {
    if(_dateLb == nil) {
        _dateLb = [[UILabel alloc] init];
        [self.borderView addSubview:_dateLb];
        [_dateLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentLb.mas_bottom).offset(8);
            make.right.equalTo(-5);
            make.bottom.equalTo(-10);
            make.width.equalTo(self.borderView.mas_width);
        }];
        _dateLb.textAlignment = NSTextAlignmentRight;
        _dateLb.font = [UIFont systemFontOfSize:13];
        _dateLb.textColor = kLabelColor;
    }
    return _dateLb;
}

@end
