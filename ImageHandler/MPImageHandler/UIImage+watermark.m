//
//  UIImage+watermark.m
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//

#import "UIImage+watermark.h"

@implementation UIImage (watermark)

+ (UIImage *)addWatermarkWithImage:(UIImage *)originImage text:(NSString *)text textPoint:(CGPoint)point attributedString:(NSDictionary * )attributed {
    UIGraphicsBeginImageContextWithOptions(originImage.size, NO, 0);
    
    [originImage drawInRect:CGRectMake(0, 0, originImage.size.width, originImage.size.height)];
    [text drawAtPoint:point withAttributes:attributed];
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

+ (UIImage *)addWatermarkWithImage:(UIImage *)originImage watermarkImage:(UIImage *)watermarkImage {
    UIGraphicsBeginImageContextWithOptions(originImage.size, NO, 0.0);
    [originImage drawInRect:CGRectMake(0, 0, originImage.size.width, originImage.size.height)];
    
    CGFloat scale = 0.3;
    CGFloat margin = 5;
    CGFloat waterW = watermarkImage.size.width * scale;
    CGFloat waterH = watermarkImage.size.height * scale;
    CGFloat waterX = originImage.size.width - waterW - margin;
    CGFloat waterY = originImage.size.height - waterH - margin;
    
    [watermarkImage drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end
