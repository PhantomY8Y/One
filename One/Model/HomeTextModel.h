//
//  HomeTextModel.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HomeTextDataModel,HomeTextShare_ListModel,HomeTextWxModel,HomeTextWeiboModel,HomeTextQqModel;

@interface HomeTextModel : NSObject

@property (nonatomic, assign) NSInteger res;

@property (nonatomic, strong) NSArray<HomeTextDataModel *> *data;

@end

@interface HomeTextDataModel : NSObject

@property (nonatomic, copy) NSString *maketime;

@property (nonatomic, assign) NSInteger sharenum;

@property (nonatomic, copy) NSString *last_update_date;

@property (nonatomic, copy) NSString *template_category;

@property (nonatomic, copy) NSString *image_from;

@property (nonatomic, copy) NSString *hide_flag;

@property (nonatomic, copy) NSString *hp_makettime;

@property (nonatomic, copy) NSString *web_url;

@property (nonatomic, copy) NSString *text_from;

@property (nonatomic, copy) NSString *hpcontent_id;

@property (nonatomic, strong) HomeTextShare_ListModel *share_list;

@property (nonatomic, copy) NSString *image_authors;

@property (nonatomic, copy) NSString *ipad_url;

@property (nonatomic, copy) NSString *hp_img_url;

@property (nonatomic, copy) NSString *hp_content;

@property (nonatomic, copy) NSString *author_id;

@property (nonatomic, copy) NSString *content_bgcolor;

@property (nonatomic, assign) NSInteger praisenum;

@property (nonatomic, assign) NSInteger commentnum;

@property (nonatomic, copy) NSString *wb_img_url;

@property (nonatomic, copy) NSString *hp_title;

@property (nonatomic, copy) NSString *hp_author;

@property (nonatomic, copy) NSString *hp_img_original_url;

@property (nonatomic, copy) NSString *text_authors;

@end

@interface HomeTextShare_ListModel : NSObject

@property (nonatomic, strong) HomeTextWxModel *wx;

@property (nonatomic, strong) HomeTextWeiboModel *weibo;

@property (nonatomic, strong) HomeTextQqModel *qq;

@end

@interface HomeTextWxModel : NSObject

@property (nonatomic, copy) NSString *imgUrl;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *link;

@end

@interface HomeTextWeiboModel : NSObject

@property (nonatomic, copy) NSString *imgUrl;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *link;

@end

@interface HomeTextQqModel : NSObject

@property (nonatomic, copy) NSString *imgUrl;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *link;

@end
