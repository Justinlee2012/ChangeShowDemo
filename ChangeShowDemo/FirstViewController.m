//
//  FirstViewController.m
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//

#import "FirstViewController.h"
#import "ChangeShowHelper.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [self.downloadBtn setImage:imgWithImageName(@"download.png",self.downloadBtn) forState:UIControlStateNormal];
    
    [self.goBackBtn setImage:imgWithImageName(@"goback.png",self.goBackBtn) forState:UIControlStateNormal];
    
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
static int show_type=1;
- (IBAction)ChangeShow:(id)sender {
    show_type++;
    if (show_type>3) {
        show_type=1;
    }
    
    [[ChangeShowHelper sharedInstance] changeShow:[NSString stringWithFormat:@"%d",show_type]];
    
}
@end
