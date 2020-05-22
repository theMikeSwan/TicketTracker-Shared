//
//  Ticket.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public class Ticket: Codable {
    public let id: UUID?
    public let number: String
    public var summary: String
    public var detail: String
    public var type: TicketType
    public let reporter: User
    public var asignee: User
    public var size: String
    public var status: TicketStatus {
        didSet {
            let newHistory = TicketHistory(id: nil, date: Date(), status: status)
            history.append(newHistory)
        }
    }
    public let dateCreated: Date
    public var comments: [Comment]
    public var history: [TicketHistory]
    
    public init(id: UUID?, number: String, summary: String, detail: String, type: TicketType, reporter: User, asignee: User, size: String, status: TicketStatus, dateCreated: Date = Date(), comments: [Comment] = [Comment](), history: [TicketHistory] = [TicketHistory]()) {
        self.id = id
        self.number = number
        self.summary = summary
        self.detail = detail
        self.type = type
        self.reporter = reporter
        self.asignee = asignee
        self.size = size
        self.status = status
        self.dateCreated = dateCreated
        self.comments = comments
        self.history = history
    }
}
