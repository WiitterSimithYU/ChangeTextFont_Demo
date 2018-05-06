//
//  ViewController.m
//  动态改变字体和字体颜色
//
//  Created by 马金丽 on 17/7/6.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor grayColor];
    UILabel *contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 100, 40)];
    contentLabel.text = @"测试字体";
    contentLabel.textColor = [UIColor blackColor];
    contentLabel.font = [UIFont systemFontOfSize:14.0];
    [self.view addSubview:contentLabel];
    
}


- (IBAction)blueBtn:(id)sender {
     [[NSNotificationCenter defaultCenter] postNotificationName:@"text_color" object:nil userInfo:@{@"textcolor":[UIColor blueColor]}];
//    FirstViewController *vc = [[FirstViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
    

}

- (IBAction)redBtn:(id)sender {
     [[NSNotificationCenter defaultCenter] postNotificationName:@"text_color" object:nil userInfo:@{@"textcolor":[UIColor redColor]}];
}

- (IBAction)changeFont:(UIButton *)sender {
    
    if (sender.tag == 200) {
      [[NSNotificationCenter defaultCenter]postNotificationName:@"text_font" object:nil userInfo:@{@"fontsize":@"20"}];
    }else{
      [[NSNotificationCenter defaultCenter]postNotificationName:@"text_font" object:nil userInfo:@{@"fontsize":@"12"}];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
