//
//  String+Persian.swift
//  SNPersianSwift
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

extension String {
    
    func persianDigits() -> String {
        var string = String(self)!
        for i in 0...9 {
            string = string.replacingOccurrences(of: SNPersianSwiftConstants.arrEnglishDigits[i], with: SNPersianSwiftConstants.arrPersianDigits[i])
            string = string.replacingOccurrences(of: SNPersianSwiftConstants.arrArabicDigits[i], with: SNPersianSwiftConstants.arrPersianDigits[i])
        }
        return string
    }
    
    func englishDigits() -> String {
        var string = String(self)!
        for i in 0...9 {
            string = string.replacingOccurrences(of: SNPersianSwiftConstants.arrPersianDigits[i], with: SNPersianSwiftConstants.arrEnglishDigits[i])
            string = string.replacingOccurrences(of: SNPersianSwiftConstants.arrArabicDigits[i], with: SNPersianSwiftConstants.arrEnglishDigits[i])
        }
        return string
    }
    
    func persianChars() -> String {
        var string = persianDigits()
        string = string.replacingOccurrences(of: "ي", with: "ی")
        string = string.replacingOccurrences(of: "ة", with: "ه")
        string = string.replacingOccurrences(of: "ك", with: "ک")
        return string
    }
    
}
