//
//  UIImage+filter.h
//  ImageFilter
//
//  Created by zheng min on 2019/5/30.
//  Copyright © 2019 Micropattern. All rights reserved.
//  加滤镜

#import <UIKit/UIKit.h>
#import <GPUImage/GPUImage.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (filter)

/**
 Get all filter type

 @return list of filters
 */
+ (NSArray *)getAllFilterType;

/**
 Add filter with core image

 @param originImage origin image
 @param filterName filter name
 @return result image
 */
+ (UIImage *)addFilterUsingCoreImage:(UIImage *)originImage filterName:(NSString *)filterName;

/**
 Add filter with GPUImage

 @param originImage origin image
 @param filter GPUImageFilter
 @return result image
 */
- (UIImage *)addFilterWithGPUImage:(UIImage *)originImage filter:(GPUImageFilter *)filter;

@end

NS_ASSUME_NONNULL_END
