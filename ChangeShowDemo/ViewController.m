//
//  ViewController.m
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//

#import "ViewController.h"
#import "ChangeShowHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    UITabBar *tabBar = self.tabBar;
    UITabBarItem *itema = [tabBar.items objectAtIndex:0];
    UITabBarItem *itemb = [tabBar.items objectAtIndex:1];
    [itema setImage:[imgWithImageName(@"itema.png",itema) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [itema setSelectedImage:[imgWithImageName(@"itema.png",itema) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [itemb setImage:[imgWithImageName(@"itemb.png",itemb) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [itemb setSelectedImage:[imgWithImageName(@"itemb.png",itemb) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
