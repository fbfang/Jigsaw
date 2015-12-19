//
//  FBImageData.m
//  Jigsaw
//
//  Created by nctarena on 15/12/17.
//  Copyright © 2015年 fb. All rights reserved.
//

#import "FBImageData.h"
#import <UIKit/UIKit.h>

@implementation FBImageData
+(NSArray *)getImageData
{
    NSMutableArray *imageArray = [NSMutableArray array];
    
    UIImage *image = [UIImage imageNamed:@"c.jpg"];
    [imageArray addObject:image];
    
    return imageArray;
}
@end
