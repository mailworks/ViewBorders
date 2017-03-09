# ViewBorders

[![CI Status](http://img.shields.io/travis/mzeng/ViewBorders.svg?style=flat)](https://travis-ci.org/mzeng/ViewBorders)
[![Version](https://img.shields.io/cocoapods/v/ViewBorders.svg?style=flat)](http://cocoapods.org/pods/ViewBorders)
[![License](https://img.shields.io/cocoapods/l/ViewBorders.svg?style=flat)](http://cocoapods.org/pods/ViewBorders)
[![Platform](https://img.shields.io/cocoapods/p/ViewBorders.svg?style=flat)](http://cocoapods.org/pods/ViewBorders)

##Introduce
add border to view
![Screenshot](./image.png)
## Example
```Objective-C
[self.firstView zm_addAutolayoutBorder:UIRectEdgeTop color:[UIColor blackColor] thickness:10];
[self.secondView zm_addAutolayoutBorder:UIRectEdgeAll color:[UIColor redColor] logicThickness:10];
[self.thirdView zm_addAutolayoutBorder:UIRectEdgeAll color:[UIColor redColor] thickness:5 inset:10];
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ViewBorders is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ViewBorders", :git => 'https://github.com/mailworks/ViewBorders'
```

## Author

mzeng, mailworks@qq.com

## License

ViewBorders is available under the MIT license. See the LICENSE file for more info.
