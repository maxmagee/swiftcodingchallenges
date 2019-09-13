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

}
