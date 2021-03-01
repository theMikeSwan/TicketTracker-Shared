import XCTest
@testable import TTShared

final class TTSharedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TTShared().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
