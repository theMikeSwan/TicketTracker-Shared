//
//  TicketHistory.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public class TicketHistory: Codable {
    public let id: UUID?
    public let date: Date
    public let status: TicketStatus
    
    internal init(id: UUID?, date: Date = Date(), status: TicketStatus) {
        self.id = id
        self.date = date
        self.status = status
    }
}
