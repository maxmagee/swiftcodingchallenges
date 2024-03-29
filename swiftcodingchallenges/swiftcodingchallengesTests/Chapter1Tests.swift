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
    
    func testChallenge9() {
        XCTAssertTrue(chapter1.challenge9(input: "The quick brown fox jumps over the lazy dog"))
        XCTAssertFalse(chapter1.challenge9(input: "The quick brown fox jumped over the lazy dog"))
    }
    
    func testChallenge9b() {
        XCTAssertTrue(chapter1.challenge9b(input: "The quick brown fox jumps over the lazy dog"))
        XCTAssertFalse(chapter1.challenge9b(input: "The quick brown fox jumped over the lazy dog"))
    }
    
    func testChallenge10() {
        let testA = chapter1.challenge10(input: "Swift Coding Challenges")
        XCTAssertEqual(testA.consonants, 15)
        XCTAssertEqual(testA.vowels, 6)
        
        let testB = chapter1.challenge10(input: "Mississippi")
        XCTAssertEqual(testB.consonants, 7)
        XCTAssertEqual(testB.vowels, 4)
    }
    
    func testChallenge10b() {
        let testA = chapter1.challenge10b(input: "Swift Coding Challenges")
        XCTAssertEqual(testA.consonants, 15)
        XCTAssertEqual(testA.vowels, 6)
        
        let testB = chapter1.challenge10b(input: "Mississippi")
        XCTAssertEqual(testB.consonants, 7)
        XCTAssertEqual(testB.vowels, 4)
    }
    
    func testChallenge11() {
        XCTAssertTrue(chapter1.challenge11(inputA: "Clamp", inputB: "Cramp"))
        XCTAssertTrue(chapter1.challenge11(inputA: "Clamp", inputB: "Crams"))
        XCTAssertTrue(chapter1.challenge11(inputA: "Clamp", inputB: "Grams"))
        XCTAssertFalse(chapter1.challenge11(inputA: "Clamp", inputB: "Grans"))
        XCTAssertFalse(chapter1.challenge11(inputA: "Clamp", inputB: "Clam"))
        XCTAssertFalse(chapter1.challenge11(inputA: "clamp", inputB: "maple"))
    }
    
    func testChallenge12() {
        XCTAssertEqual(chapter1.challenge12(input: "swift switch swill swim"), "swi")
        XCTAssertEqual(chapter1.challenge12(input: "flip flap flop"), "fl")
    }
    
    func testChallenge13() {
        XCTAssertEqual(chapter1.challenge13(input: "aabbcc"), "a2b2c2")
        XCTAssertEqual(chapter1.challenge13(input: "aaabaaabaaa"), "a3b1a3b1a3")
        XCTAssertEqual(chapter1.challenge13(input: "aaAAaa"), "a2A2a2")
    }
    
    func testChallenge15() {
        XCTAssertEqual(chapter1.challenge15(input: "Swift Coding Challenges"), "tfiwS gnidoC segnellahC")
        XCTAssertEqual(chapter1.challenge15(input: "The quick brown fox"), "ehT kciuq nworb xof")
    }
}
