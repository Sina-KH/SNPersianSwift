//
//  SNJalaaliSwift.swift
//  SNPersianSwift
//
//  Created by Sina Khalili on 7/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

public class SNJalaaliSwift {
    
    public private(set) var year: Int
    public private(set) var month: Int
    public private(set) var day: Int
    public private(set) var hour: Int
    public private(set) var minute: Int
    public private(set) var second: Int
    
    init(date: Date) {
        let calendar    = Foundation.Calendar(identifier: .persian)
        let components  = (calendar as NSCalendar).components([.year, .month, .day, .hour, .minute, .second], from: date)
        year    = components.year!
        month   = components.month!
        day     = components.day!
        hour    = components.hour!
        minute  = components.minute!
        second  = components.second!
    }
    
    public enum SNJalaaliSwiftDateFormat: Int {
        case englishFormat      = 0
        case persianFormat      = 1
        case persianTextFormat  = 2
    }
    public func date(with format: SNJalaaliSwiftDateFormat) -> String {
        switch format {
        case .englishFormat:
            return "\(year)/\(month)/\(day)"
        case .persianFormat:
            return date(with:.englishFormat).persianDigits
        case .persianTextFormat:
            return "\(day) \(SNPersianSwiftConstants.arrJalaaliMonthes[month-1]) \(year)".persianDigits
        }
    }
    
    public enum SNJalaaliSwiftTimeFormat: Int {
        case englishFormat          = 0
        case englishTextFormat      = 1
        case persianFormat          = 2
        case persianTextFormat      = 3
        case persianLongTextFormat  = 4
    }
    public func time(with format: SNJalaaliSwiftTimeFormat) -> String {
        let strMinute = minute < 10 ? "0\(minute)" : String(minute)
        switch format {
        case .englishFormat:
            return "\(hour):\(strMinute)"
        case .englishTextFormat:
            return "\(hour < 12 ? hour : hour - 12):\(strMinute) \(hour < 12 ? "AM" : "PM")"
        case .persianFormat:
            return time(with:.englishFormat).persianDigits
        case .persianTextFormat:
            return "\(hour < 12 ? hour : hour - 12):\(strMinute) \(hour < 12 ? "ق.ظ" : "ب.ظ")".persianDigits
        case .persianLongTextFormat:
            return "\(hour < 12 ? hour : hour - 12):\(strMinute) \(hour < 12 ? "قبل‌ازظهر" : "بعدازظهر")".persianDigits
        }
    }
    
    public func dateTime(withDateIn dateFormat: SNJalaaliSwiftDateFormat, timeIn timeFormat: SNJalaaliSwiftTimeFormat, seperator: String = "") -> String {
        var strSeperator = " \(seperator) "
        if strSeperator.characters.count == 2 {
            strSeperator = " "
        }
        return "\(date(with: dateFormat))\(strSeperator)\(time(with: timeFormat))"
    }
    
}
