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

}
