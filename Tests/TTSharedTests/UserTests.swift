//
//  UserTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 3/12/21.
//

import XCTest
@testable import TTShared

class UserTests: XCTestCase {

    func testUserCreation() throws {
        let user = UserDTO(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
        XCTAssertEqual(user.name, "Hermione Granger")
        XCTAssertEqual(user.email, "Hermione.Granger@hogwarts.edu")
    }

    static var allTests = [
        ("testUserCreation", testUserCreation),
    ]

}
