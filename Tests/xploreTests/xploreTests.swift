import XCTest
@testable import xplore

final class xploreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(xplore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
