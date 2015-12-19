//
//  FBImageTools.m
//  Jigsaw
//
//  Created by nctarena on 15/12/17.
//  Copyright © 2015年 fb. All rights reserved.
//

#import "FBImageTools.h"

@implementation FBImageTools

+(UIImage *)scaleImage:(UIImage *)image andSize:(CGSize)size
{
    if (image == nil)
    {
        return nil;
    }
    UIImage *newimage;

    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    newimage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    
    return newimage;
}

+(NSArray *)cutImage:(UIImage *)image andHNum:(NSInteger)hNum andVNum:(NSInteger)vNum andSize:(CGSize)size
{
    if (image == nil)
    {
        return nil;
    }
    NSMutableArray *imageArray = [NSMutableArray array];
    float width = size.width * 1.0 / hNum;
    float height = size.height * 1.0 / vNum;
    for (int i = 0; i < hNum; i ++)
    {
        for (int j = 0; j < vNum; j++)
        {
            CGRect rect = CGRectMake(width*j, height*i, width, height);
            UIImage *newImage = [UIImage imageWithCGImage:CGImageCreateWithImageInRect([image CGImage], rect)];
            [imageArray addObject:newImage];
        }

    }

    return imageArray;
}

@end
