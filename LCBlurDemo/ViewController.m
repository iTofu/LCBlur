//
//  ViewController.m
//  LCBlurDemo
//
//  Created by Leo on 16/5/15.
//  Copyright © 2016年 Leo（http://LeoDev.me）. All rights reserved.
//

#import "ViewController.h"
#import "LCBlur.h"

@interface ViewController ()

@property (nonatomic, weak) UIImageView *imageView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    
    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.image        = [UIImage imageNamed:@"ratchet"];
    CGFloat imageH          = (screenH - 20.0f) * 0.5f;
    CGFloat imageW          = imageH * 3.0f / 4.0f;
    imageView1.frame        = CGRectMake(0, 20.0f, imageW, imageH);
    [self.view addSubview:imageView1];
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.image        = [UIImage imageNamed:@"ratchet"];
    imageView2.frame        = CGRectMake(0, CGRectGetMaxY(imageView1.frame), imageW, imageH);
    [self.view addSubview:imageView2];
    self.imageView2         = imageView2;
    
    UISlider *slider    = [[UISlider alloc] init];
    slider.minimumValue = 0;
    slider.maximumValue = 30.0f;
    slider.frame        = CGRectMake(20.0f, imageH, screenW - 40.0f, 30.0f);
    [self.view addSubview:slider];
    
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
//    [imageView2 blur];
}

- (void)sliderValueChanged:(UISlider *)slider {
    [self.imageView2 unBlur];
    [self.imageView2 blurWithRadius:slider.value];
    
    NSLog(@"%f", slider.value);
}

@end
