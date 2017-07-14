//
//  Int+Persian.swift
//  SNPersianSwift
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

extension Int {

    var persianDigits: String {
        get {
            let number = NSNumber(value: self as Int)
            let formatter = NumberFormatter()
            let locale = Locale(identifier: "fa")
            formatter.groupingSeparator = "،"
            formatter.locale = locale
            formatter.numberStyle = .decimal
            return formatter.string(from: number)!
        }
    }

}
