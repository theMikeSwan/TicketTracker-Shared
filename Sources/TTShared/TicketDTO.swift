//
//  File.swift
//  
//
//  Created by Michael Swan on 3/2/21.
//

import Foundation

public final class TicketDTO: Codable {
        
    public let id: UUID?
    public let number: String
    public var summary: String
    public var detail: String
    public var size: String
    public let dateCreated: Date
    public var status: TicketStatus
    public let type: TicketType
    
    public init(id: UUID?, number: String, summary: String, detail: String, size: String, dateCreated: Date = Date(), status: TicketStatus, type: TicketType) {
        self.id = id
        self.number = number
        self.summary = summary
        self.detail = detail
        self.size = size
        self.dateCreated = dateCreated
        self.status = status
        self.type = type
    }
}
