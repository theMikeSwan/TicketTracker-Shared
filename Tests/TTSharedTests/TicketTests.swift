//
//  TicketTests.swift
//  
//
//  Created by Mike Swan on 3/11/21.
//

import XCTest
@testable import TTShared

class TicketTests: XCTestCase {

    var ticket: TicketDTO?
    let date = Date()
    let ticketNumber = "T-001"
    let summary = "My homework sucks"
    let detail = "Please write it for me!"
    let type: TicketType = TicketType.allCases.randomElement()!
    let size = "3"
    let status: TicketStatus = TicketStatus.allCases.randomElement()!
    let user = UserDTO(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
    override func setUpWithError() throws {
        ticket = TicketDTO(id: nil, number: ticketNumber, summary: summary, detail: detail, size: size, dateCreated: date, status: status, type: type, assignee: user)
    }

    func testTicketCreation() throws {
        guard let ticket = ticket else {
            XCTFail("Ticket was not created at all!")
            return
        }
        XCTAssertEqual(ticket.summary, summary)
        XCTAssertEqual(ticket.detail, detail)
        XCTAssertEqual(ticket.type, type)
        XCTAssertEqual(ticket.size, size)
        XCTAssertEqual(ticket.status, status)
        XCTAssertEqual(ticket.dateCreated, date)
        XCTAssertEqual(ticket.assignee.name, user.name)
    }
    
    static var allTests = [
        ("testTicketCreation", testTicketCreation),
    ]

}
