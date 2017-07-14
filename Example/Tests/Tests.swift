import UIKit
import XCTest
import SNPersianSwift

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        // Date, JalaaliSwift tests
        
        let date = Date(timeIntervalSince1970: 828613800)
        
        XCTAssertEqual(date.relativeString(with: .english), "21 years ago")
        XCTAssertEqual(date.relativeString(with: .persian), "۲۱ سال قبل")
        
        let jalaali = date.jalaali
        XCTAssertEqual(jalaali.year, 1375);
        XCTAssertEqual(jalaali.month, 1);
        XCTAssertEqual(jalaali.day, 16);
        XCTAssertEqual(jalaali.hour, 15);
        XCTAssertEqual(jalaali.minute, 0);
        XCTAssertEqual(jalaali.second, 0);
        
        XCTAssertEqual(jalaali.date(with: .englishFormat), "1375/1/16")
        XCTAssertEqual(jalaali.date(with: .persianFormat), "۱۳۷۵/۱/۱۶")
        XCTAssertEqual(jalaali.date(with: .persianTextFormat), "۱۶ فروردین ۱۳۷۵")

        XCTAssertEqual(jalaali.time(with: .englishFormat), "15:00")
        XCTAssertEqual(jalaali.time(with: .englishTextFormat), "3:00 PM")
        XCTAssertEqual(jalaali.time(with: .persianFormat), "۱۵:۰۰")
        XCTAssertEqual(jalaali.time(with: .persianTextFormat), "۳:۰۰ ب.ظ")
        XCTAssertEqual(jalaali.time(with: .persianLongTextFormat), "۳:۰۰ بعدازظهر")

        XCTAssertEqual(jalaali.dateTime(withDateIn: .englishFormat, timeIn: .englishTextFormat, seperator: "."), "1375/1/16 . 3:00 PM")
        XCTAssertEqual(jalaali.dateTime(withDateIn: .persianTextFormat, timeIn: .persianLongTextFormat), "۱۶ فروردین ۱۳۷۵ ۳:۰۰ بعدازظهر")
        
        // String tests
        XCTAssertEqual("0,1,2,3,4,5,6,7,8,9".persianDigits, "۰,۱,۲,۳,۴,۵,۶,۷,۸,۹")
        XCTAssertEqual("۰,۱,۲,۳,۴,۵,۶,۷,۸,۹".englishDigits, "0,1,2,3,4,5,6,7,8,9")
        XCTAssertEqual("ي,ة,ك".persianChars, "ی,ه,ک")

        // Int tests
        XCTAssertEqual(12345.persianDigits, "۱۲،۳۴۵");
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
