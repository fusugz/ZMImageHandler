//
//  UIImage+blur.m
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//

#import "UIImage+blur.h"

@implementation UIImage (blur)

+ (UIImage *)blurImage:(UIImage *)image withBlurLevel:(CGFloat)blurLevel {
    if (image == nil) {
        return nil;
    }
    
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *ciImage = [CIImage imageWithCGImage:image.CGImage];
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:ciImage forKey:kCIInputImageKey];
    // 设置模糊程度
    [filter setValue:@(blurLevel) forKey: @"inputRadius"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef outImage = [context createCGImage: result fromRect:ciImage.extent];
    UIImage * blurImage = [UIImage imageWithCGImage:outImage];
    CGImageRelease(outImage);
    return blurImage;
}

@end
