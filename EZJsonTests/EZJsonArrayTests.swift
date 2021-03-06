//
//  EZJsonArrayTests.swift
//  EZJson
//
//  Created by Konshin on 08.09.16.
//  Copyright © 2016 Konshin. All rights reserved.
//

import XCTest
@testable import EZJson

class EZJsonArrayTests: XCTestCase {
    private let json = [
        "id": 5,
        "name": "Snake1",
        "body": [
            [1, 2],
            [3, 4],
            [5, 6]
        ]
    ] as [String : Any]
    
    func testParse() {
        let jsonObject = JSON(json)
        guard case .array(_ ) = jsonObject["body"] else {
            XCTAssert(false)
            return
        }
    }
}
