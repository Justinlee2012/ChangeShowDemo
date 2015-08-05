//
//  ChangeShowHelper.h
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define basepath [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"package"]
#define imagekey(x,y) [NSString stringWithFormat:@"%@_%dimg",x,y]
#define imgWithImageName(x,y) [[ChangeShowHelper sharedInstance] changeShowImageName:x andObj:y]

@interface ChangeShowHelper : NSObject

@property(nonatomic,copy) NSString *showType;

@property(nonatomic,retain) NSMutableDictionary *showTypeDic;

+(ChangeShowHelper *)sharedInstance;

-(UIImage *)changeShowImageName:(NSString *)imgName andObj:(id)obj;

-(void)changeShow:(NSString *)showType;
@end
