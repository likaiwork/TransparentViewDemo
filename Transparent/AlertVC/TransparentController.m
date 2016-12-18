//
//  TransparentController.m
//
//
//  Created by jordan on 16/7/22.
//  Copyright © 2016年 MD313. All rights reserved.
//

#import "TransparentController.h"

@interface TransparentController ()
@property (nonatomic,weak) IBOutlet UILabel * uiContentLabel;
@property (nonatomic,weak) IBOutlet UILabel * uiContentLabel2;
@end

@implementation TransparentController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.7f]];
}

-(IBAction)buttonClick:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
