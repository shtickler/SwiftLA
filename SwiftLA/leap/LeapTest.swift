import XCTest



class LeapTest : XCTestCase {

	func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
	}

	func testAnyOldYear() {
	  let year = Year(calendarYear: 1997)
	  XCTAssertFalse(year.isLeapYear)
	}

	func testCentury() {
	  let year = Year(calendarYear: 1900)
	  XCTAssertFalse(year.isLeapYear)
	}

	func testExceptionalCentury() {
	  let year = Year(calendarYear: 2400)
	  XCTAssertTrue(year.isLeapYear)
	}

    func testWeirdCase() {
        let year1 = Year(calendarYear: 2000)
        let year2 = Year(calendarYear: 0)
        let year3 = Year(calendarYear: 1800)
        let year4 = Year(calendarYear: -4)
        XCTAssertTrue(year1.isLeapYear)
        XCTAssertTrue(year2.isLeapYear)
        XCTAssertFalse(year3.isLeapYear)
        XCTAssertTrue(year4.isLeapYear)
    }
}