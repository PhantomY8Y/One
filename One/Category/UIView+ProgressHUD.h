//
//  UIView+ProgressHUD.h
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ProgressHUD)

- (void)showProgressHUD;

- (void)hideProgressHUD;

- (void)showProgressHUDWithText:(NSString *)text delay:(NSInteger)delay;

@end
