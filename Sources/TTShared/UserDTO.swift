//
//  User.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public final class UserDTO: Codable {
    public let id: UUID?
    public let name: String
    public let email: String
    
    public init(id: UUID?, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
}
