//
//  UIImage+watermark.h
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//  加水印

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (watermark)

/**
 Add text watermark

 @param originImage origin image
 @param text text watermark
 @param point to point
 @param attributed attributed,
 
 example:
 NSDictionary * attr = @{NSFontAttributeName:[UIFont systemFontOfSize:20], NSForegroundColorAttributeName:[UIColor darkTextColor]};
 NSMutableAttributedString *attr_str =[[NSMutableAttributedString alloc] initWithString:text attributes:attr];
 
 @return result image
 */
+ (UIImage *)addWatermarkWithImage:(UIImage *)originImage text:(NSString *)text textPoint:(CGPoint)point attributedString:(NSDictionary * )attributed;

/**
 Add image watermark

 @param originImage origin image
 @param watermarkImage watermark image
 @return result image
 */
+ (UIImage *)addWatermarkWithImage:(UIImage *)originImage watermarkImage:(UIImage *)watermarkImage;

@end

NS_ASSUME_NONNULL_END
