//
//  Chapter3Tests.swift
//  swiftcodingchallengesTests
//
//  Created by Max Magee on 9/17/19.
//  Copyright © 2019 Max Magee. All rights reserved.
//

import XCTest
@testable import swiftcodingchallenges

class Chapter3Tests: XCTestCase {
    var chapter3: Chapter3!
    
    override func setUp() {
        super.setUp()
        chapter3 = Chapter3()
    }

    override func tearDown() {
        chapter3 = nil
        super.tearDown()
    }
}
