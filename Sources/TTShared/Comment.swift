//
//  Comment.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public final class Comment: Codable {
    public let id: UUID?
    public let user: User
    public let contents: String
    public let date: Date
    
    public init(id: UUID?, user: User, contents: String, date: Date = Date()) {
        self.id = id
        self.user = user
        self.contents = contents
        self.date = date
    }

}
