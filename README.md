# LCBlur

[![Travis](https://img.shields.io/travis/iTofu/LCBlur.svg?style=flat)](https://travis-ci.org/iTofu/LCBlur)
[![CocoaPods](https://img.shields.io/cocoapods/v/LCBlur.svg)](http://cocoadocs.org/docsets/LCBlur)
[![CocoaPods](https://img.shields.io/cocoapods/l/LCBlur.svg)](https://raw.githubusercontent.com/iTofu/LCBlur/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LCBlur.svg)](http://cocoadocs.org/docsets/LCBlur)
[![LeoDev](https://img.shields.io/badge/blog-LeoDev.me-brightgreen.svg)](http://leodev.me)

🌙️ Quick way to add blur effect ~

![LCBlur](https://raw.githubusercontent.com/iTofu/LCBlur/master/LCBlurDemo01.png)

````
In me the tiger sniffs the rose.

心有猛虎，细嗅蔷薇。
````

Welcome to my blog: <http://LeoDev.me> ✨

[**中文介绍**](https://github.com/iTofu/LCBlur/blob/master/README-zh_CN.md)



## Introduction

This is a simple way to add blur effect to `UIView` ~

You could also add blur to `UIImageView`, `UIWindow`... They are the subclasses of `UIView`.

If you like this project, please give this project a star, thank you! ⭐️



## Installation

LCBlur is available on [CocoaPods](https://cocoapods.org/). Just add the following to your project Podfile:

````ruby
pod 'LCBlur'  # Podfile
````



## Non-CocoaPods Installation

Just drag the LCBlur folder into your project.



## Usage

* Use by including the following import:

  ````objc
  #import "LCBlur.h"
  ````

* Demo code:

  ````objc
  // Blur
  [imageView blurWithRadius:10.0f];

  // Quick way
  [imageView blur];

  // Remove blur
  [imageView unBlur];
  ````


## Examples



## Release

### V 1.0.0

* First release.



## Support

* If you have any question, just [commit a issue](https://github.com/iTofu/LCBlur/issues/new)! Thx!

* Mail: devtip@163.com

* Blog: http://LeoDev.me



## License

[MIT License](http://opensource.org/licenses/MIT)
