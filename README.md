# FluentBuilder

![Platform](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-lightgray.svg?style=flat)
[![SwiftPM](https://img.shields.io/badge/SPM-compatible-green.svg?style=flat)](https://github.com/hectr/FluentBuilder/blob/master/Package.swift)
[![CocoaPods](https://img.shields.io/cocoapods/v/FluentBuilder.svg?style=flat)](https://cocoapods.org/pods/FluentBuilder)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/hectr/FluentBuilder/blob/master/LICENSE)

## Examples

```
UIButton()
    .builder
    .frame(CGRect(x: 0, y: 0, width: 100, height: 100))
    .isSelected(true)
    .build()

UIView
    .builder
    .backgroundColor(.white)
    .alpha(0.5)
    .build()

Builder(UITextField.self)
    .placeholder("Type here")
    .build()

let _: UILabel = Builder()
    .text("text")
    .build()

let _: UIImageView = Builder
    .tintColor(.black)
    .contentMode(.scaleAspectFit)
    .build()
```

## Alternatives

- <https://github.com/ytyubox/fluentinterface>
- <https://github.com/refined-swift/FluentUI>

## License

FluentBuilder is released under the MIT license. See LICENSE file for details.
