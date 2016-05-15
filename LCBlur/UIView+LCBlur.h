//
//  UIView+LCBlur.h
//  LCBlurDemo
//
//  Created by Leo on 16/5/15.
//  Copyright © 2016年 Leo（http://LeoDev.me）. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LCBlur)

/**
 *  Add blur effect.
 *
 *  @param radius blur radius
 */
- (void)blurWithRadius:(float)radius;

/**
 *  Quick way to add blur effect.
 */
- (void)blur;

/**
 *  Remove blur effect.
 */
- (void)unBlur;

@end
