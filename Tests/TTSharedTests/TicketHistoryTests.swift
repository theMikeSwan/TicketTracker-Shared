//
//  TicketHistoryTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 5/8/20.
//

import XCTest
@testable import TTShared

class TicketHistoryTests: XCTestCase {


    func testTicketHistoryCreation() throws {
        let date = Date()
        let history = TicketHistory(id: nil, date: date, status: .todo)
        XCTAssertEqual(history.date, date)
        XCTAssertEqual(history.status, TicketStatus.todo)
    }

    static var allTests = [
        ("testTicketHistoryCreation", testTicketHistoryCreation),
    ]

}
