//
//  UIImage+save.m
//  ImageHandler
//
//  Created by zheng min on 2019/5/31.
//  Copyright © 2019 Micropattern. All rights reserved.
//

#import "UIImage+save.h"

@implementation UIImage (save)

+ (PHAssetCollectionChangeRequest *)getCurrentPhotoCollectionWithAlbumName:(NSString *)albumName {
    PHFetchResult *result = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAlbumRegular options:nil];

    for (PHAssetCollection *assetCollection in result) {
        if ([assetCollection.localizedTitle containsString:albumName]) {
            PHAssetCollectionChangeRequest *collectionRequest = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:assetCollection];
            return collectionRequest;
        }
    }
    
    // 创建新相册
    PHAssetCollectionChangeRequest *collectionRequest = [PHAssetCollectionChangeRequest creationRequestForAssetCollectionWithTitle:albumName];
    return collectionRequest;
}

+ (void)saveImage:(UIImage *)image toAlbum:(NSString *)albumName completionHandler:(void (^)(NSError *, NSString *))completionHandler {
    PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    __block NSString *localIdentifier = @"";
    
    [photoLibrary performChanges:^{
        PHAssetCollectionChangeRequest *collectionRequest = [self getCurrentPhotoCollectionWithAlbumName:albumName];
        PHAssetChangeRequest *assetRequest = [PHAssetChangeRequest creationRequestForAssetFromImage:image];
        PHObjectPlaceholder *placeholder = [assetRequest placeholderForCreatedAsset];
        localIdentifier = placeholder.localIdentifier;
        [collectionRequest addAssets:@[placeholder]];
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        if (error) {
            completionHandler(error, nil);
        } else {
            completionHandler(nil, localIdentifier);
        }
    }];
}

+ (void)saveImage:(UIImage *)image toDocument:(NSString *)fileName imageName:(NSString *)imageName {
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *imagePath = [documentPath stringByAppendingString:[NSString stringWithFormat:@"/%@/%@", fileName, imageName]];
    [UIImageJPEGRepresentation(image, 1.0) writeToFile:imagePath atomically:YES];
    NSLog(@"保存图片到沙盒：%@", imagePath);
}

@end
