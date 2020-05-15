//
//  TicketTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 5/8/20.
//

import XCTest
@testable import TTShared

class TicketTests: XCTestCase {

    var ticket: Ticket?
    let hermoine = User(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
    let ron = User(id: nil, name: "Ron Weasley", email: "Ronald.Weasley@hogwarts.edu")
    let date = Date()
    override func setUpWithError() throws {
        ticket = Ticket(id: nil, number: "T-001", summary: "My homework sucks", detail: "Please write it for me!", type: .story, reporter: ron, asignee: hermoine, size: "3", status: .todo, dateCreated: date)
    }

    func testTicketCreation() throws {
        guard let ticket = ticket else {
            XCTFail("Ticket was not created at all!")
            return
        }
        XCTAssertEqual(ticket.summary, "My homework sucks")
        XCTAssertEqual(ticket.detail, "Please write it for me!")
        XCTAssertEqual(ticket.type, .story)
        XCTAssertEqual(ticket.reporter.name, ron.name)
        XCTAssertEqual(ticket.asignee.name, hermoine.name)
        XCTAssertEqual(ticket.size, "3")
        XCTAssertEqual(ticket.status, .todo)
        XCTAssertEqual(ticket.dateCreated, date)
        XCTAssertEqual(ticket.comments.count, 0)
        XCTAssertEqual(ticket.history.count, 0)
    }
    
    func testNewStatusAddsToHistory() throws {
        guard var ticket = ticket else {
            XCTFail("Ticket was not created at all!")
            return
        }
        XCTAssertEqual(ticket.history.count, 0)
        ticket.status = .inProgress
        XCTAssertEqual(ticket.history.count, 1)
    }

    func testChangeAsignee() throws {
        guard var ticket = ticket else {
            XCTFail("Ticket was not created at all!")
            return
        }
        XCTAssertEqual(ticket.asignee.name, hermoine.name)
        ticket.asignee = ron
        XCTAssertEqual(ticket.asignee.name, ron.name)
    }
    
    func testAddRemoveComments() throws {
        guard var ticket = ticket else {
            XCTFail("Ticket was not created at all!")
            return
        }
        let contents = "I hope you're pleased with yourselves. We could have been killed - or worse, expelled."
        let comment = Comment(id: nil, user: hermoine, contents: contents)
        
        XCTAssertEqual(ticket.comments.count, 0)
        ticket.comments.append(comment)
        XCTAssertEqual(ticket.comments.count, 1)
        ticket.comments.remove(at: 0)
        XCTAssertEqual(ticket.comments.count, 0)
    }
    
    static var allTests = [
        ("testTicketCreation", testTicketCreation),
        ("testNewStatusAddsToHistory", testNewStatusAddsToHistory),
        ("testChangeAsignee", testChangeAsignee),
        ("testAddRemoveComments", testAddRemoveComments),
    ]

}
