//
//  Chapter2Tests.swift
//  swiftcodingchallengesTests
//
//  Created by Max Magee on 9/12/19.
//  Copyright © 2019 Max Magee. All rights reserved.
//

import XCTest
@testable import swiftcodingchallenges

class Chapter2Tests: XCTestCase {
    var chapter2: Chapter2!
    
    override func setUp() {
        super.setUp()
        chapter2 = Chapter2()
    }

    override func tearDown() {
        chapter2 = nil
        super.tearDown()
    }
    
    func testChallenge16() {
        // chapter2.challenge16()       // uncomment this line to run
        XCTAssertTrue(true)
    }

    func testChallenge17() {
        let test1 = chapter2.challenge17(min: 1, max: 10)
        let test2 = chapter2.challenge17(min: 5, max: 5)
        
        XCTAssertTrue(test1 >= 1)
        XCTAssertTrue(test1 <= 10)
        XCTAssertTrue(test2 == 5)
    }
    
    func testChallenge18() {
        XCTAssertEqual(chapter2.challenge18(num: 4, power: 3), 64)
        XCTAssertEqual(chapter2.challenge18(num: 2, power: 8), 256)
    }
}
