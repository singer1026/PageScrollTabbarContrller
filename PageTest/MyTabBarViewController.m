//
//  MyViewController.m
//  PageTest
//
//  Created by Singer on 15/9/14.
//  Copyright (c) 2015年 Singer. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "MyTabBar.h"
#import "ViewController.h"

@interface MyTabBarViewController ()<MyTabBarDelegate>

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myTabBar = [[MyTabBar alloc]initWithFrame:self.tabBar.bounds];
    _myTabBar.delegate = self;
    _myTabBar.backgroundColor = [UIColor orangeColor];
    [self.tabBar addSubview:_myTabBar];
}

-(void)changeTabBar:(NSInteger)from to:(NSInteger)to{
    UINavigationController *nav = (UINavigationController *)self.selectedViewController;
    ViewController *vc = (ViewController *)nav.viewControllers.firstObject;
    [vc changeTabBar:to];
}



@end
