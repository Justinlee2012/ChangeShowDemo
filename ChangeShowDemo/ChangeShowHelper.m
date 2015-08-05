//
//  ChangeShowHelper.m
//  ChangeShowDemo
//
//  Created by JustinLee on 15/8/5.
//  Copyright (c) 2015年 JustinLee. All rights reserved.
//

#import "ChangeShowHelper.h"

static ChangeShowHelper *changeShowHelper=nil;

@implementation ChangeShowHelper

+(ChangeShowHelper *)sharedInstance{
    if(changeShowHelper==nil){
        changeShowHelper = [[ChangeShowHelper alloc] init];
    }
    
    return changeShowHelper;
}

-(id)init{
    if (self=[super init]) {
        self.showType=@"1";
        self.showTypeDic = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

//感觉通过配置文件的方式去存储会更灵活一些。
-(UIImage *)changeShowImageName:(NSString *)imgName andObj:(id)obj{
    if (!imgName || [imgName isEqualToString:@""]) {
        return nil;
    }
    
    NSString *imgPath=[[basepath stringByAppendingPathComponent:self.showType] stringByAppendingPathComponent:imgName];

    UIImage* img = [UIImage imageWithContentsOfFile:imgPath];
    
    //避免重复加入对象
    if([[self.showTypeDic allValues] containsObject:obj]){
        return img;
    }
    
    int i = 0;
    
    //保证重名可用
    while ([self.showTypeDic objectForKey:imagekey(imgName,i)]) {
        i++;
    }
    
    //返回保存img对象的
//    if([self.showTypeDic objectForKey:imagekey(imgName)]){
//        img =[self.showTypeDic objectForKey:imagekey(imgName)];
//    }
    
    if(self.showTypeDic!=nil){
        
//原来构思的是保存img对象的
//        if(!img){
//            img = [UIImage imageWithContentsOfFile:imgPath];
//            [self.showTypeDic setValue:img forKey:imagekey(imgName)];
            [self.showTypeDic setValue:obj forKey:imagekey(imgName,i)];
//        }
    }
    
    return img;
}

-(void)changeShow:(NSString *)showType{
    if (!showType || [showType isEqualToString:@""]) {
        return;
    }
    
    if([[NSFileManager defaultManager] fileExistsAtPath:[basepath stringByAppendingPathComponent:showType]]){
        self.showType=showType;
    }
    
    NSDictionary *tempDic = [NSDictionary dictionaryWithDictionary:self.showTypeDic];
    [self.showTypeDic removeAllObjects];
    for (NSString *key in [tempDic allKeys]) {
        NSArray *arr = [key componentsSeparatedByString:@"_"];
        NSString *objName = @"";
        
        for (int i=0; i<[arr count]-1; i++) {
            objName=[NSString stringWithFormat:@"%@%@",objName,arr[i]];
        }
        
        if([key hasSuffix:@"img"]){
        
            //NSString *imgPath=[[basepath stringByAppendingPathComponent:self.showType] stringByAppendingPathComponent:objName]; //图片地址
            
            //同一对象多种方法尚未解决，比如heightlighted之类的，简单处理可以通过命名规则解决。
            if([[tempDic objectForKey:key] respondsToSelector:@selector(setImage:forState:)]){
                [[tempDic objectForKey:key] setImage:imgWithImageName(objName,[tempDic objectForKey:key]) forState:UIControlStateNormal];
            }
            
            if([[tempDic objectForKey:key] respondsToSelector:@selector(setImage:)]){
                [[tempDic objectForKey:key] setImage:[imgWithImageName(objName,[tempDic objectForKey:key]) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
            }
            
        }
        //NSLog(@"%@,%lu",key,(unsigned long)[self.showTypeDic count]); 测试观察数量
    }
    
    
    
}
@end
