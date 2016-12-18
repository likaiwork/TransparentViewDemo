//
//  UIViewAlert.h

//
//  Created by Jordan on 7/26/16.
//  Copyright © 2016 MD313. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertView.h"

@interface UIViewAlert : AlertView

@property (nonatomic, copy) void (^clickFavouriteButton)(void);
@property (nonatomic, copy) void (^clickFeedbackButton)(void);

+ (instancetype)nibInstance;

@end
