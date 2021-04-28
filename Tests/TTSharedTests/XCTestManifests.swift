import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(TTSharedTests.allTests),
        testCase(TicketTests.allTests),
        testCase(TicketHistoryTests.allTests),
        testCase(UserTests.allTests),
    ]
}
#endif
