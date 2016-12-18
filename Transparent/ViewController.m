//
//  ViewController.m
//  Transparent
//
//  Created by jordan on 16/8/10.
//  Copyright © 2016年 jordan. All rights reserved.
//

#import "ViewController.h"
#import "TransparentController.h"
#import "UIViewAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  点击按钮
 *
 *  @param sender <#sender description#>
 */
-(IBAction)buttonClick:(id)sender
{
    UIButton * uiButton = (UIButton *)sender;
    if(uiButton.tag ==1){
        //UIViewController
        TransparentController * transparentVC = [[TransparentController alloc] initWithNibName:@"TransparentController" bundle:nil];
        if ([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
            transparentVC.modalPresentationStyle=UIModalPresentationOverCurrentContext;
        }else{
            self.modalPresentationStyle=UIModalPresentationOverFullScreen;
        }
        [self presentViewController:transparentVC animated:YES completion:nil];
        
    }else{
        //UIView
        UIViewAlert *alert = [UIViewAlert nibInstance];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
