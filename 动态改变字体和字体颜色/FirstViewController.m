//
//  FirstViewController.m
//  动态改变字体和字体颜色
//
//  Created by 马金丽 on 17/7/6.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *subLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, 100, 40)];
    subLabel.text = @"测试字体0000";
    subLabel.textColor = [UIColor redColor];
    subLabel.font = [UIFont systemFontOfSize:14.0];
    [self.view addSubview:subLabel];
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
