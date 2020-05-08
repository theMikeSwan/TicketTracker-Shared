//
//  Ticket.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public struct Ticket: Codable {
    public var summary: String
    public var detail: String
    public var type: TicketType
    public let reporter: User
    public var asignee: User
    public var size: String
    public var status: TicketStatus {
        didSet {
            let newHistory = TicketHistory(date: Date(), status: status)
            history.append(newHistory)
        }
    }
    public let dateCreated: Date
    public var comments: [Comment]
    public var history: [TicketHistory]
}
