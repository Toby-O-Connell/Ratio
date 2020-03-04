import XCTest
@testable import Ratio

final class RatioTests: XCTestCase {
    func testSimplification() {
        XCTAssertEqual(Ratio(4, 2).simplified(), Ratio(2, 1))
        XCTAssertNotEqual(Ratio(8, 2).simplified(), Ratio(2, 1))
        XCTAssertEqual(Ratio(8, 2).simplified(), Ratio(4, 1))
        XCTAssertEqual(Ratio(4, 6).simplified(), Ratio(2, 3))
    }
}
