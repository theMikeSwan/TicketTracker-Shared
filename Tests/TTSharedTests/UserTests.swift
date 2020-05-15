//
//  UserTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 5/8/20.
//

import XCTest
@testable import TTShared

class UserTests: XCTestCase {

    func testUserCreation() throws {
        let user = User(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
        XCTAssertEqual(user.name, "Hermione Granger")
        XCTAssertEqual(user.email, "Hermione.Granger@hogwarts.edu")
        XCTAssertEqual(user.tickets.count, 0)
    }
    
    func testAddRemoveTickets() throws {
        var user = User(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
        
        let ticket = Ticket(id: nil, number: "T-001", summary: "Sample Ticket", detail: "No details of mention", type: .saga, reporter: user, asignee: user, size: "Large", status: .todo)
        
        XCTAssertEqual(user.tickets.count, 0)
        user.tickets.append(ticket)
        XCTAssertEqual(user.tickets.count, 1)
        user.tickets.remove(at: 0)
        XCTAssertEqual(user.tickets.count, 0)
    }

    static var allTests = [
        ("testUserCreation", testUserCreation),
        ("testAddRemoveTickets", testAddRemoveTickets),
    ]

}
