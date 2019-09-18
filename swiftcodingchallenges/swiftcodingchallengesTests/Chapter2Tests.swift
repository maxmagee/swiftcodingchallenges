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
    
    func testChallenge19() {
        var a = 1
        var b = 2
        
        chapter2.challenge19(a: &a, b: &b)
        
        XCTAssertEqual(a, 2)
        XCTAssertEqual(b, 1)
    }
    
    func testChallenge20() {
        XCTAssertTrue(chapter2.challenge20(number: 11))
        XCTAssertTrue(chapter2.challenge20(number: 13))
        XCTAssertFalse(chapter2.challenge20(number: 4))
        XCTAssertFalse(chapter2.challenge20(number: 9))
        XCTAssertTrue(chapter2.challenge20(number: 16777259))
    }
    
    func testChallenge21() {
        let test1 = chapter2.challenge21(number: 12)
        let test2 = chapter2.challenge21(number: 28)
        
        XCTAssertEqual(test1.nextLowest, 10)
        XCTAssertEqual(test1.nextHighest, 17)
        XCTAssertEqual(test2.nextLowest, 26)
        XCTAssertEqual(test2.nextHighest, 35)
    }
    
    func testChallenge22() {
        XCTAssertEqual(chapter2.challenge22(input: 32), 4)
        XCTAssertEqual(chapter2.challenge22(input: 4), 32)
        XCTAssertEqual(chapter2.challenge22(input: 41), 148)
        XCTAssertEqual(chapter2.challenge22(input: 148), 41)
    }
    
    func testChallenge23() {
        XCTAssertTrue(chapter2.challenge23(input: "01010101"))
        XCTAssertTrue(chapter2.challenge23(input: "123456789"))
        XCTAssertTrue(chapter2.challenge23(input: "9223372036854775808"))
        XCTAssertFalse(chapter2.challenge23(input: "1.01"))
    }
}
