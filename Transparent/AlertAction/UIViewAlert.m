//
//  UIViewAlert.m
//
//  Created by Jordan on 7/26/16.
//  Copyright © 2016 MD313. All rights reserved.
//

#import "UIViewAlert.h"
#import "UIView+FRLayout.h"

@interface UIViewAlert ()

@end

@implementation UIViewAlert

+ (instancetype)nibInstance {
    
    NSString *nibName = @"UIViewAlert";
    
    
    UIViewAlert *alert = [[NSBundle mainBundle] loadNibNamed:nibName
                                                                  owner:nil
                                                                options:nil].firstObject;
    alert.layer.masksToBounds = YES;
    alert.layer.cornerRadius = 4;
    
    if ([UIScreen mainScreen].bounds.size.width < 375) {
        alert.width *= 320.f / 375.f;
        alert.height = 110 + 172.f * (320.f / 375.f);
    }
    return alert;
}

- (IBAction)clickNotNow:(id)sender {
    [self hide];
}

- (IBAction)clickFavouriteButton:(id)sender {
    [self hide];
    if (self.clickFavouriteButton) {
        self.clickFavouriteButton();
    }
}
@end
