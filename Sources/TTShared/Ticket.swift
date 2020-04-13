//
//  Ticket.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public struct Ticket: Codable {
    public let summary: String
    public let detail: String
    public let type: TicketType
    public let reporter: User
    public let asignee: User
    public let size: String
    public let status: TicketStatus
    public let dateCreated: Date
    public let comments: [String]
    public let history: [TicketHistory]
}
