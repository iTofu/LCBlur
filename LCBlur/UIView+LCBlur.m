//
//  UIView+LCBlur.m
//  LCBlurDemo
//
//  Created by Leo on 16/5/15.
//  Copyright © 2016年 Leo（http://LeoDev.me）. All rights reserved.
//

#import "UIView+LCBlur.h"

static NSInteger LCBlurBlurredImageView = -100; // blurred image view's tag
static NSInteger LCBlurOverlay          = -101; // overlay's tag

@implementation UIView (LCBlur)

/**
 *  Add blur effect.
 *
 *  @param radius blur radius
 */
- (void)blurWithRadius:(float)radius {
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CIContext *context  = [CIContext contextWithOptions:nil];
    
    CIImage *inputImage = [CIImage imageWithCGImage:viewImage.CGImage];
    
    CIFilter *gaussianBlurFilter  = [CIFilter filterWithName:@"CIGaussianBlur"];
    [gaussianBlurFilter setValue:inputImage forKey:@"inputImage"];
    [gaussianBlurFilter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    CIImage *outputImage          = [gaussianBlurFilter valueForKey:@"outputImage"];
    
    CGImageRef cgImage            = [context createCGImage:outputImage fromRect:self.bounds];
    UIImage *blurredImage         = [UIImage imageWithCGImage:cgImage];
    UIImageView *blurredImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    blurredImageView.tag          = LCBlurBlurredImageView;
    blurredImageView.image        = blurredImage;
    
    UIView *overlay               = [[UIView alloc] initWithFrame:self.bounds];
    overlay.tag                   = LCBlurOverlay;
    overlay.backgroundColor       = [UIColor colorWithRed:1.0f
                                                    green:1.0f
                                                     blue:1.0f
                                                    alpha:0.8f];
    
    [self addSubview:blurredImageView];
    [self addSubview:overlay];
}

/**
 *  Quick way to add blur effect.
 */
- (void)blur {
    [self blurWithRadius:15.0f];
}

/**
 *  Remove blur effect.
 */
- (void)unBlur {
    [[self viewWithTag:LCBlurBlurredImageView] removeFromSuperview];
    [[self viewWithTag:LCBlurOverlay] removeFromSuperview];
}

@end
