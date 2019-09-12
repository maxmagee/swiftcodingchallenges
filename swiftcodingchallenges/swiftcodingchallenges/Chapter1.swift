//
//  Chapter1.swift
//  swiftcodingchallenges
//
//  Created by Max Magee on 9/11/19.
//  Copyright © 2019 Max Magee. All rights reserved.
//

import Foundation

// Strings
class Chapter1 {
    
    /// Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
    ///
    /// - Parameter input: A string of letters to examine for uniqueness
    /// - Returns: True if the string contains only unique letters
    func challenge1(input: String) -> Bool {
        return Set(input).count == input.count
    }
}
