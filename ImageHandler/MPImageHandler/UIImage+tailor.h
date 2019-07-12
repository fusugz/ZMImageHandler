//
//  UIImage+tailor.h
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//  裁剪&旋转

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (tailor)

/**
 Tailor image

 @param image origin image
 @param frame to frame
 @return result image
 */
+ (UIImage *)tailorImage:(UIImage *)image frame:(CGRect)frame;

/**
 Rotate image

 @param image origin image
 @param orientation to orientation
 @return result image
 */
+ (UIImage *)rotateImage:(UIImage *)image orientation:(UIImageOrientation)orientation;

@end

NS_ASSUME_NONNULL_END
