//
//  UIView+ProgressHUD.m
//  One
//
//  Created by Phantom on 2019/6/20.
//  Copyright © 2019年 Phantom. All rights reserved.
//

#import "UIView+ProgressHUD.h"

@implementation UIView (ProgressHUD)

- (void)showProgressHUD{
    [self hideProgressHUD];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    [hud hideAnimated:YES afterDelay:30];
}

- (void)hideProgressHUD{
    [MBProgressHUD hideHUDForView:self animated:YES];
}

- (void)showProgressHUDWithText:(NSString *)text delay:(NSInteger)delay{
    [self hideProgressHUD];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    [hud hideAnimated:YES afterDelay:delay];
    hud.label.text = text;
}

@end
