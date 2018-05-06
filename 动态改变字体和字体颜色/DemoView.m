//
//  DemoView.m
//  动态改变字体和字体颜色
//
//         我有一壶酒,足以慰风尘
//         倾倒江海里,共饮天下人
//
//  Created by 马金丽 on 17/7/7.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "DemoView.h"

@interface DemoView ()

@end

@implementation DemoView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initializer];
    }
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
- (void)initializer{
    
    
    [self makeConstraints];
}

/**
 * 背景色
 */
- (void)makeBackgroundColor:(UIColor*)color{

}
#pragma mark - 约束
- (void)makeConstraints{

}

#pragma mark - 懒加载



@end
