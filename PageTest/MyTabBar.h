//
//  MyTabBar.h
//  PageTest
//
//  Created by Singer on 15/9/14.
//  Copyright (c) 2015年 Singer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyTabBarDelegate <NSObject>

-(void)changeTabBar:(NSInteger)from to:(NSInteger)to;

@end

@interface MyTabBar : UIView

@property (nonatomic , weak) id<MyTabBarDelegate> delegate;

-(void) btnClick:(UIButton *)button;

@end
