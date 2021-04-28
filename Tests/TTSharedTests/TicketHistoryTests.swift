//
//  TicketHistoryTests.swift
//  
//
//  Created by Mike Swan on 3/11/21.
//

import XCTest
@testable import TTShared

class TicketHistoryTests: XCTestCase {


    func testTicketHistoryCreation() throws {
        let date = Date()
        let history = TicketHistoryDTO(id: nil, date: date, status: .todo)
        XCTAssertEqual(history.date, date)
        XCTAssertEqual(history.status, TicketStatus.todo)
    }

    static var allTests = [
        ("testTicketHistoryCreation", testTicketHistoryCreation),
    ]

}
