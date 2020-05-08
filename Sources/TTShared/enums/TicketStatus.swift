//
//  TicketStatus.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public enum TicketStatus: String, Codable {
    case todo
    case inProgress
    case inTest
    case done

}
