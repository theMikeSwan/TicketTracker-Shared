//
//  File.swift
//  
//
//  Created by Michael Swan on 3/2/21.
//

import Foundation

public enum TicketStatus: String, Codable, CaseIterable {
    case todo
    case inProgress
    case inTest
    case done

}
