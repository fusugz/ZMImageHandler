//
//  UIImage+blur.h
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//  高斯模糊

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (blur)

/**
 Blur image

 @param image origin image
 @param blurLevel blur level
 @return result image
 */
+ (UIImage *)blurImage:(UIImage *)image withBlurLevel:(CGFloat)blurLevel;

@end

NS_ASSUME_NONNULL_END
