//
//  Date+Persian.swift
//  SNPersianSwift
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

public extension Date {

    var jalaali: SNJalaaliSwift {
        get {
            return SNJalaaliSwift(date: self)
        }
    }
    
    enum NSDateRelativeStringFormat: Int {
        case english = 0
        case persian = 1
    }
    func relativeString(with format: NSDateRelativeStringFormat) -> String {
        let calendar    = Foundation.Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day, .hour, .minute, .second], from: self, to: Date())
        var arrRelativeDate = [String]()
        switch format {
        case .english:
            arrRelativeDate = SNPersianSwiftConstants.arrRelativeDateEnglish
        case .persian:
            arrRelativeDate = SNPersianSwiftConstants.arrRelativeDatePersian
        }
        var relativeString = String()
        if components.year! > 0 {
            if components.year == 1 {
                relativeString = arrRelativeDate[0]
            } else {
                relativeString = "\(components.year!) \(arrRelativeDate[1])"
            }
        } else if components.month! > 0 {
            if components.month! == 1 {
                relativeString = arrRelativeDate[2]
            } else {
                relativeString = "\(components.month!) \(arrRelativeDate[3])"
            }
        } else if components.day! >= 7 {
            let week = components.day! / 7
            if week == 1 {
                relativeString = arrRelativeDate[4]
            } else {
                relativeString = "\(week) \(arrRelativeDate[5])"
            }
        } else if components.day! > 0 {
            if components.day! == 1 {
                relativeString = arrRelativeDate[6]
            } else {
                relativeString = "\(components.day!) \(arrRelativeDate[7])"
            }
        } else if components.hour! > 0 {
            if components.hour == 1 {
                relativeString = arrRelativeDate[8]
            } else {
                relativeString = "\(components.hour!) \(arrRelativeDate[9])"
            }
        } else if components.minute! > 0 {
            if components.minute == 1 {
                relativeString = arrRelativeDate[10]
            } else {
                relativeString = "\(components.minute!) \(arrRelativeDate[11])"
            }
        } else if components.second! < 10 {
            relativeString = arrRelativeDate[12]
        } else {
            relativeString = "\(components.second!) \(arrRelativeDate[13])"
        }
        switch (format) {
        case .english:
            return relativeString;
        case .persian:
            return relativeString.persianDigits
        }

    }

}
