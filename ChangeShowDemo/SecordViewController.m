//
//  SecordViewController.m
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//

#import "SecordViewController.h"
#import "ChangeShowHelper.h"

@interface SecordViewController ()

@end

@implementation SecordViewController

- (void)viewDidLoad {

    [self.signupBtn setImage:imgWithImageName(@"signup.png",self.signupBtn) forState:UIControlStateNormal];
    
    [self.gobackBtn setImage:imgWithImageName(@"goback.png",self.gobackBtn) forState:UIControlStateNormal];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
