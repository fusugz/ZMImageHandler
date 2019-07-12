//
//  UIImage+save.h
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//  保存

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (save)

/**
 Save Image to Album
 
 @param image target image
 @param albumName album name
 @param completionHandler block of success or error
 */
+ (void)saveImage:(UIImage *)image toAlbum:(NSString *)albumName completionHandler:(void (^)(NSError *, NSString *))completionHandler;

/**
 Save image to document
 
 @param image target image
 @param fileName file name
 @param imageName image name
 */
+ (void)saveImage:(UIImage *)image toDocument:(NSString *)fileName imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
