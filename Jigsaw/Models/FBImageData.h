//
//  FBImageData.h
//  Jigsaw
//
//  Created by nctarena on 15/12/17.
//  Copyright © 2015年 fb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBImageData : NSObject
@property (nonatomic,strong) NSString *imageName;
+(NSArray *)getImageData;
@end
