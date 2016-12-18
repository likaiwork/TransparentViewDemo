//
//  KNAlertView.m
//
//  Created by Jordan on 7/29/16.
//  Copyright © 2016 MD313. All rights reserved.
//

#import "AlertView.h"

@implementation AlertView

- (void)show {
    
    UIWindow *key = [UIApplication sharedApplication].keyWindow ?: [[UIApplication sharedApplication].delegate window];
    
    self.transform = CGAffineTransformMakeScale(0.5, 0.5);
    self.alpha = 0.6;
    self.transparentButton.alpha = 0;
    
    [key addSubview:self.transparentButton];
    [key addSubview:self];
    
    self.center = key.center;
    
    [UIView animateWithDuration:0.35
                          delay:0
         usingSpringWithDamping:0.8
          initialSpringVelocity:1
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.transform = CGAffineTransformMakeScale(1, 1);
                         self.transparentButton.alpha = 1;
                         self.alpha = 1;
                         
                         self.center = key.center;
                     }
                     completion:^(BOOL finished) {
                         
                     }];
}

- (void)hide {
    [UIView animateWithDuration:0.1 animations:^{
        self.alpha = 0;
        self.transparentButton.alpha = 0;
        self.transform = CGAffineTransformMakeScale(0.5, 0.5);
    } completion:^(BOOL finished) {
        [self.transparentButton removeFromSuperview];
        [self removeFromSuperview];
    }];
}

- (UIButton *)transparentButton {
    if (!_transparentButton) {
        _transparentButton = [[UIButton alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _transparentButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    return _transparentButton;
}

@end
