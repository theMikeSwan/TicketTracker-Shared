//
//  Sprint.swift
//  TTShared
//
//  Created by Mike Swan on 4/13/20.
//

import Foundation

public struct Sprint: Codable {
    public let name: String
    public let startDate: Date
    public let endDate: Date
    public let tickets: [Ticket]
}
