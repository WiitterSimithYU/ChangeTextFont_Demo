//
//  UILabel+changeFontAndColor.m
//  动态改变字体和字体颜色
//
//  Created by 马金丽 on 17/7/6.
//  Copyright © 2017年 majinli. All rights reserved.
//

#import "UILabel+changeFontAndColor.h"
#import <objc/runtime.h>



@implementation UILabel (changeFontAndColor)

+ (void)load
{
    //得到类的实例方法
    Method oldMethod = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method newMethod = class_getInstanceMethod([self class], @selector(changeInitWithCoder:));
    method_exchangeImplementations(newMethod, oldMethod);
    
    
    Method oldinitMethod = class_getInstanceMethod([self class], @selector(initWithFrame:));
    
    Method newinitMethod = class_getInstanceMethod([self class], @selector(newinitWithFrame:));

    method_exchangeImplementations(newinitMethod, oldinitMethod);
}

- (instancetype)newinitWithFrame:(CGRect)frame
{
    [self newinitWithFrame:frame];
 
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(new_setTextFont:) name:@"text_font" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(new_setTextColor:) name:@"text_color" object:nil];

    }
    return self;
}


//xib创建的
- (instancetype)changeInitWithCoder:(NSCoder *)aDecoder
{
    [self changeInitWithCoder:aDecoder];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(new_setTextColor:) name:@"text_color" object:nil];
        if (IPHONE_6p) {
            
            self.font = [UIFont systemFontOfSize:self.font.pointSize];
        }
    }
    return self;
}

- (void)new_setTextColor:(NSNotification *)notication
{
    NSDictionary *resultDict = notication.userInfo;
    self.textColor = [resultDict objectForKey:@"textcolor"];
}

- (void)new_setTextFont:(NSNotification *)notication
{
    NSDictionary *resultDict = notication.userInfo;
    self.font = [UIFont systemFontOfSize:[[resultDict objectForKey:@"fontsize"]floatValue]];
}

@end
