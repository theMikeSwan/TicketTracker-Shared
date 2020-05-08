import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(TTSharedTests.allTests),
        testCase(UserTests.allTests),
        testCase(CommentTests.allTests),
        testCase(TicketHistoryTests.allTests),
        testCase(TicketTests.allTests),
        testCase(SprintTests.allTests),
    ]
}
#endif
