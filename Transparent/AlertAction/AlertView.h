//
//  KNAlertView.h
//  swjsq
//
//  Created by jiangkelan on 7/29/16.
//  Copyright © 2016 MD313. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertView : UIView

@property (nonatomic, strong) UIButton *transparentButton;

- (void)show;
- (void)hide;

@end
