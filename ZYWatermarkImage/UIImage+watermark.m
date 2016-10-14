//
//  UIImage+watermark.m
//  ZYWatermarkImage
//
//  Created by 凡城软件 on 16/10/14.
//  Copyright © 2016年 lizhongyuan. All rights reserved.
//

#import "UIImage+watermark.h"
//屏幕
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@implementation UIImage (watermark)
+(UIImage *)addImageLogo:(UIImage *)logo text:(UIImage *)img
{
    //get image width and height
    int w = WIDTH*2;//img.size.width;
    int h = HEIGHT*2;//img.size.height;
    int logoWidth = logo.size.width*4;
    int logoHeight = logo.size.height*4;
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //create a graphic context with CGBitmapContextCreate
    CGContextRef context = CGBitmapContextCreate(NULL, w, h, 8, 44 * w, colorSpace, kCGImageAlphaPremultipliedFirst);
    CGContextDrawImage(context, CGRectMake(0, 0, w, h), img.CGImage);
    CGContextDrawImage(context, CGRectMake(0, h-logoHeight, logoWidth, logoHeight), [logo CGImage]);
    CGImageRef imageMasked = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    return [UIImage imageWithCGImage:imageMasked];
    // CGContextDrawImage(contextRef, CGRectMake(100, 50, 200, 80), [smallImg CGImage]);
}
@end
