//
//  FirstViewController.h
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITabBarItem *itemA;
@property (weak, nonatomic) IBOutlet UIButton *downloadBtn;
@property (weak, nonatomic) IBOutlet UIButton *goBackBtn;
- (IBAction)ChangeShow:(id)sender;

@end
