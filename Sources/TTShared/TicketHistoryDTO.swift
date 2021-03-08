//
//  File.swift
//  
//
//  Created by Mike Swan on 3/7/21.
//

import Foundation

public final class TicketHistoryDTO: Codable {
    public let id: UUID?
    public let date: Date
    public let status: TicketStatus
    
    public init(id: UUID?, date: Date = Date(), status: TicketStatus) {
        self.id = id
        self.date = date
        self.status = status
    }
}
