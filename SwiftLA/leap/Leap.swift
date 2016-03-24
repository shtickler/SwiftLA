//
//  Leap.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 3/23/16.
//
//

import Foundation

//Write a program that will take a year and report if it is a leap year.
//
//The tricky thing here is that a leap year in the Gregorian calendar occurs:
//
//```plain
//```
//
//For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
//year, but 2000 is.

//struct A {
//
//    var a = 1
//    var b = 2
//
//    init(a: Int = 3) {
//        self.a = a
//        self.b = a * 3
//    }
//}
//
//    func doSth() {
//        let a = A()
//    }

/* First approach
struct Year {

    let calendarYear: Int

    var isLeapYear: Bool = false

    init(calendarYear: Int) {
        self.calendarYear = calendarYear
        self.isLeapYear = true
    }
}
*/

/* Second approach
struct Year {

    var isLeapYear: Bool = false

    init(calendarYear: Int) {
        self.isLeapYear = true
    }
}
*/

//on every year that is evenly divisible by 4
//except every year that is evenly divisible by 100
//unless the year is also evenly divisible by 400

struct Year {

    let calendarYear: Int

//    var isLeapYear: Bool {
//        let isEvenlyDivisibleBy4 = (calendarYear % 4) == 0
//        let isEvenlyDivisibleBy100 = (calendarYear % 100) != 0
//        return (isEvenlyDivisibleBy4 && isEvenlyDivisibleBy100) || ((calendarYear % 400) == 0)
//    }

    var isLeapYear: Bool {
        return { ($0 % 4 == 0) && ($0 % 100 != 0) || ($0 % 400 == 0) }(calendarYear)
    }
}