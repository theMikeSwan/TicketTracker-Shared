//
//  TicketType.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public enum TicketType: String, Codable {
    case theme
    case saga
    case epic
    case story
    case task
    case bug
}
