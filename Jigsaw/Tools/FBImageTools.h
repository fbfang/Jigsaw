//
//  FBImageTools.h
//  Jigsaw
//
//  Created by nctarena on 15/12/17.
//  Copyright © 2015年 fb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FBImageTools : NSObject

+(UIImage *)scaleImage:(UIImage *)image andSize:(CGSize)size;
+(NSArray *)cutImage:(UIImage *)image andHNum:(NSInteger)hNum andVNum:(NSInteger)vNum andSize:(CGSize)size;

@end
