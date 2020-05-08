//
//  User.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public struct User: Codable {
    public let name: String
    public let email: String
    public var tickets: [Ticket]
}
