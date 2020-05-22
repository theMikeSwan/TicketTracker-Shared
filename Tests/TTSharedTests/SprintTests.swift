//
//  SprintTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 5/8/20.
//

import XCTest
@testable import TTShared

class SprintTests: XCTestCase {


    func testSprintCreation() throws {
        let startDate = Date()
        // We just want to see two dates that are not the same so this method works fine here.
        // Never use it in production code though, it will screw you at some point.
        let endDate = startDate.addingTimeInterval(1_209_600)
        let sprint = Sprint(id: nil, name: "Sprint 2020-1", startDate: startDate, endDate: endDate)
        
        XCTAssertEqual(sprint.name, "Sprint 2020-1")
        XCTAssertEqual(sprint.startDate, startDate)
        XCTAssertEqual(sprint.endDate, endDate)
        XCTAssertEqual(sprint.tickets.count, 0)
    }
    
    func testAddRemoveTickets() throws {
        let startDate = Date()
        let endDate = startDate.addingTimeInterval(1_209_600)
        let sprint = Sprint(id: nil, name: "Sprint 2020-1", startDate: startDate, endDate: endDate)
        
        let user = User(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
        
        XCTAssertEqual(sprint.tickets.count, 0)
        let ticket = Ticket(id: nil, number: "T_001", summary: "Sample Ticket", detail: "No details of mention", type: .saga, reporter: user, asignee: user, size: "Large", status: .todo)
        sprint.tickets.append(ticket)
        XCTAssertEqual(sprint.tickets.count, 1)
        sprint.tickets.remove(at: 0)
        XCTAssertEqual(sprint.tickets.count, 0)
    }

    static var allTests = [
        ("testSprintCreation", testSprintCreation),
        ("testAddRemoveTickets", testAddRemoveTickets),
    ]

}
