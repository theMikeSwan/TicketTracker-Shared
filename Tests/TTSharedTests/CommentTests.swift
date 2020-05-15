//
//  CommentTests.swift
//  TTSharedTests
//
//  Created by Michael Swan on 5/8/20.
//

import XCTest
@testable import TTShared

class CommentTests: XCTestCase {

    func testCommentCreation() throws {
        let user = User(id: nil, name: "Hermione Granger", email: "Hermione.Granger@hogwarts.edu")
        let contents = "I hope you're pleased with yourselves. We could have been killed - or worse, expelled."
        let comment = Comment(id: nil, user: user, contents: contents)
        XCTAssertEqual(comment.user.name, user.name)
        XCTAssertEqual(comment.contents, contents)
    }

    static var allTests = [
        ("testCommentCreation", testCommentCreation),
    ]

}
