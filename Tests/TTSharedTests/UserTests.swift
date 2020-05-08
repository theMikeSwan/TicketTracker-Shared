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
        let user = User(name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu", tickets: [Ticket]())
        XCTAssertEqual(user.name, "Hermione Granger")
        XCTAssertEqual(user.email, "Hermione.Granger@hogwarts.edu")
        XCTAssertEqual(user.tickets.count, 0)
    }
    
    func testAddRemoveTickets() throws {
        var user = User(name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu", tickets: [Ticket]())
        
        let ticket = Ticket(summary: "Sample Ticket", detail: "No details of mention", type: .saga, reporter: user, asignee: user, size: "Large", status: .todo, dateCreated: Date(), comments: [String](), history: [TicketHistory]())
        
        user.tickets.append(ticket)
        XCTAssertEqual(user.tickets.count, 1)
    }

    static var allTests = [
        ("testUserCreation", testUserCreation),
        ("testAddRemoveTickets", testAddRemoveTickets),
    ]

}
