//
//  UIImage+compose.h
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (compose)

/**
 Compose image 2 in 1
 
 @param topImage top image
 @param bottomImage bottom image
 @return UIImage
 */
+ (UIImage *)compose2in1WithTopImage:(UIImage *)topImage bottomImage:(UIImage *)bottomImage;

@end

NS_ASSUME_NONNULL_END
