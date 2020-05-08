//
//  Comment.swift
//  TTShared
//
//  Created by Mike Swan on 4/12/20.
//

import Foundation

public struct Comment: Codable {
    public let user: User
    public let contents: String
}
