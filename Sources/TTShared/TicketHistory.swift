//
//  TicketHistory.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public struct TicketHistory: Codable {
    public let date: Date
    public let status: TicketStatus
}
