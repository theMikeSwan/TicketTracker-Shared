//
//  Sprint.swift
//  TTShared
//
//  Created by Mike Swan on 4/13/20.
//

import Foundation

public final class Sprint: Codable {
       
    public let id: UUID?
    public let name: String
    public let startDate: Date
    public let endDate: Date
    public var tickets: [Ticket]
    
    public init(id: UUID?, name: String, startDate: Date, endDate: Date, tickets: [Ticket] = [Ticket]()) {
        self.id = id
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.tickets = tickets
    }
}
