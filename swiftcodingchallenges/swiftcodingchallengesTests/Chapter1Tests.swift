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
    
    func testChallenge3() {
        XCTAssertTrue(chapter1.challenge3(inputA: "abca", inputB: "abca"))
        XCTAssertTrue(chapter1.challenge3(inputA: "abc", inputB: "cba"))
        XCTAssertTrue(chapter1.challenge3(inputA: "a1 b2", inputB: "b1 a2"))
        XCTAssertFalse(chapter1.challenge3(inputA: "abc", inputB: "abca"))
        XCTAssertFalse(chapter1.challenge3(inputA: "abc", inputB: "Abc"))
        XCTAssertFalse(chapter1.challenge3(inputA: "abc", inputB: "cbAa"))
        XCTAssertFalse(chapter1.challenge3(inputA: "abcc", inputB: "abca"))
    }
    
    func testChallenge4() {
        XCTAssertTrue("Hello, world".challenge4(contains: "Hello"))
        XCTAssertTrue("Hello, world".challenge4(contains: "WORLD"))
        XCTAssertFalse("Hello, world".challenge4(contains: "Goodbye"))
    }
    
    func testChallenge5() {
        XCTAssertEqual(chapter1.challenge5(input: "The rain in Spain", letter: "a"), 2)
        XCTAssertEqual(chapter1.challenge5(input: "Mississippi", letter: "i"), 4)
        XCTAssertEqual(chapter1.challenge5(input: "Hacking with Swift", letter: "i"), 3)
    }
    
    func testChallenge6() {
        XCTAssertEqual(chapter1.challenge6(input: "wombat"), "wombat")
        XCTAssertEqual(chapter1.challenge6(input: "hello"), "helo")
        XCTAssertEqual(chapter1.challenge6(input: "Mississippi"), "Misp")
    }
    
    func testChallenge7() {
        XCTAssertEqual(chapter1.challenge7(input: "a   b   c"), "a b c")
        XCTAssertEqual(chapter1.challenge7(input: "    a"), " a")
        XCTAssertEqual(chapter1.challenge7(input: "abc"), "abc")
    }
    
    func testChallenge8() {
        XCTAssertTrue(chapter1.challenge8(inputA: "abcde", inputB: "eabcd"))
        XCTAssertTrue(chapter1.challenge8(inputA: "abcde", inputB: "cdeab"))
        XCTAssertFalse(chapter1.challenge8(inputA: "abcde", inputB: "abced"))
        XCTAssertFalse(chapter1.challenge8(inputA: "abc", inputB: "a"))
    }
}
