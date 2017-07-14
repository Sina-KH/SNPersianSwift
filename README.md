# SNPersianSwift

[![CI Status](http://img.shields.io/travis/sina-kh/SNPersianSwift.svg?style=flat)](https://travis-ci.org/sina-kh/SNPersianSwift)
[![Version](https://img.shields.io/cocoapods/v/SNPersianSwift.svg?style=flat)](http://cocoapods.org/pods/SNPersianSwift)
[![License](https://img.shields.io/cocoapods/l/SNPersianSwift.svg?style=flat)](http://cocoapods.org/pods/SNPersianSwift)
[![Platform](https://img.shields.io/cocoapods/p/SNPersianSwift.svg?style=flat)](http://cocoapods.org/pods/SNPersianSwift)

## Installation

SNPersianSwift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SNPersianSwift"
```

## Installation

SNPersianSwift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SNPersianSwift"
```

## Requirements

- iOS 8.0+
- Xcode 8.x
- Swift 3.x

## Examples

First of all, don't forget to import SNPersianSwift in your swift file

```sh
import "SNPersian.h"
```

### Date Extensions

**Input date:  April 4, 1996 15:00**

**Show Relative String**

```sh
date.relativeString(with: .englishFormat)
```

Available string formats:

* `.englishFormat`   21 years ago
* `.porsianFormat`   خروجی: ۲۱ سال قبل

**Show Jalaali Date**
```sh
date.jalaali.date(with: .englishFormat)
```

Available date formats:

* `.englishFormat`          1375/1/16
* `.persianFormat`          ۱۳۷۵/۱/۱۶
* `.persianTextFormat`      خروجی: ۱۶ فروردین ۱۳۷۵

**Show Jalaali Time**
```sh
date.jalaali.time(with: .englishFormat)
```

Available time formats:

* `.englishFormat`          15:00
* `.englishTextFormat`      3:00 PM
* `.persianFormat`          ۱۵:۰۰
* `.persianTextFormat`      خروجی: ۳:۰۰ ب.ظ
* `.persianLongTextFormat`  خروجی: ۳:۰۰ بعدازظهر

**Show Jalaali DateTime**

```sh
date.jalaali.dateTime(withDateIn: .englishFormat, timeIn: .englishTextFormat, seperator: ".")
```

- 1375/01/16 . 3:00 PM

```sh
date.jalaali.dateTime(withDateIn: .persianTextFormat, timeIn: .persianLongTextFormat)
```
- خروجی: ۱۶ فروردین ۱۳۷۵ ۳:۰۰ بعدازظهر

**Other APIs**
```sh
date.jalaali.year
date.jalaali.month
date.jalaali.day
date.jalaali.hour
date.jalaali.minute
date.jalaali.second
```

### NSString Extension

```sh
myString.persianDigits
```

- Input: میخواهیم عدد 24 را فارسی کنیم
- Output: میخواهیم عدد ۲۴ را فارسی کنیم

```sh
myString.englishDigits
```

- Input: میخواهیم عدد ۲۴ را انگلیسی کنیم
- Output: میخواهیم عدد 24 را انگلیسی کنیم

```sh
myString.persianChars
```

- Input: ميخواهيم كاراكتر ها را فارسي کنیم
- Output: میخواهیم کاراکتر ها را فارسی کنیم

### NSNumber Extension

```sh
12345.persianDigits
```

- Input: 12345
- Output: ۱۲،۳۴۵

```sh
myString.englishDigits
```

## Author

SinaKH, sina_od@yahoo.com

## License

SNPersian is available under the MIT license. See the LICENSE file for more info.
