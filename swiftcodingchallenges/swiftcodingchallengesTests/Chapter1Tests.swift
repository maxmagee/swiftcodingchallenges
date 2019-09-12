//
//  swiftcodingchallengesTests.swift
//  swiftcodingchallengesTests
//
//  Created by Max Magee on 9/11/19.
//  Copyright © 2019 Max Magee. All rights reserved.
//

import XCTest
@testable import swiftcodingchallenges

class Chapter1Tests: XCTestCase {
    var chapter1: Chapter1!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        chapter1 = Chapter1()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        chapter1 = nil
        super.tearDown()
    }

    func testChallenge1() {
        XCTAssertTrue(chapter1.challenge1(input: "No duplicates"))
        XCTAssertTrue(chapter1.challenge1(input: "abcdefghijklmnopqrstuvwxyz"))
        XCTAssertTrue(chapter1.challenge1(input: "AaBbCc"))
        XCTAssertFalse(chapter1.challenge1(input: "Hello, world"))
    }
    
    func testChallenge2() {
        XCTAssertTrue(chapter1.challenge2(input: "rotator"))
        XCTAssertTrue(chapter1.challenge2(input: "Rats live on no evil star"))
        XCTAssertFalse(chapter1.challenge2(input: "Never odd or even"))
        XCTAssertFalse(chapter1.challenge2(input: "Hello, world"))
    }
}
