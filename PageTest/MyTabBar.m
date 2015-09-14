//
//  MyTabBar.m
//  PageTest
//
//  Created by Singer on 15/9/14.
//  Copyright (c) 2015年 Singer. All rights reserved.
//

#import "MyTabBar.h"

@interface MyTabBar ()
{
    UIButton *_selectedBtn;
}
@end


@implementation MyTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *firstBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        firstBtn.tag = 0+1000;
//        firstBtn.selected = YES;
        [firstBtn setTitle:@"First" forState:UIControlStateNormal];
        [firstBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [firstBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        UIButton *secondBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        secondBtn.tag = 1+1000;
        [secondBtn setTitle:@"Second" forState:UIControlStateNormal];
        [secondBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [secondBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        firstBtn.frame = CGRectMake(0, 0, frame.size.width/2, frame.size.height);
        secondBtn.frame = CGRectMake(frame.size.width/2, 0, frame.size.width/2, frame.size.height);
        [self addSubview:firstBtn];
        [self addSubview:secondBtn];
        
        [firstBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [secondBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self btnClick:firstBtn];
    }
    return self;
}



-(void) btnClick:(UIButton *)button{
    [self.delegate changeTabBar:_selectedBtn.tag-1000 to:button.tag-1000];
    _selectedBtn.selected = NO;
    button.selected = YES;
    _selectedBtn = button;
}



@end
