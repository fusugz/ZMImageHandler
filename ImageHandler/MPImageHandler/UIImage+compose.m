//
//  UIImage+compose.m
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//

#import "UIImage+compose.h"

@implementation UIImage (compose)

+ (UIImage *)compose2in1WithTopImage:(UIImage *)topImage bottomImage:(UIImage *)bottomImage  {
    UIGraphicsBeginImageContext(CGSizeMake(topImage.size.width, bottomImage.size.height*2));
    
    [topImage drawInRect:CGRectMake(0, 0, topImage.size.width, topImage.size.height)];
    [bottomImage drawInRect:CGRectMake(0, topImage.size.height, bottomImage.size.width, bottomImage.size.height)];
    
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end
