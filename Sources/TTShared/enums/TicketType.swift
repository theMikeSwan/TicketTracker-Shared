//
//  File.swift
//  
//
//  Created by Mike Swan on 3/7/21.
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
