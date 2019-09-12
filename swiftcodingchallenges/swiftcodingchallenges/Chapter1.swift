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
    
    /// Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case
    ///
    /// - Parameter input: A string of letters to test if it's a palindrome
    /// - Returns: True if the string reads the same forwards and backwards
    func challenge2(input: String) -> Bool {
        return input.lowercased() == String(input.lowercased().reversed())
    }
    
    /// Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
    ///
    /// - Parameters:
    ///   - inputA: The first string to use in the comparison
    ///   - inputB: The second string to use in the comparison
    /// - Returns: True if the strings contain the same case-sensitive letters
    func challenge3(inputA: String, inputB: String) -> Bool {
        return inputA.sorted() == inputB.sorted()
    }
    
    /// Write a function that accepts a String, and returns how many times a specific character appears, taking case into account.
    ///
    /// - Parameters:
    ///   - input: The input string to search against
    ///   - letter: The character to look for within the string
    /// - Returns: How many times the given character appears in the string
    func challenge5(input: String, letter: Character) -> Int {
        return input.filter{ $0 == letter }.count
    }
    
    /// Write a function that accepts a String as its input, and returns the same string just with duplicate letters removed.
    ///
    /// - Parameter input: The starting string containing possibly duplicated letters
    /// - Returns: A new string with the duplicate letters removed
    func challenge6(input: String) -> String {
        var lettersFound: Set<Character> = Set()
        var returnString = ""
        
        for char in input {
            if !lettersFound.contains(char) {
                returnString.append(char)
                lettersFound.insert(char)
            }
        }
        
        return returnString
    }
    
}

extension String {
    
    /// Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
    ///
    /// - Parameter contains: The string to search for
    /// - Returns: True if the string contains the input parameter
    func challenge4(contains: String) -> Bool {
        return self.range(of: contains, options: .caseInsensitive) != nil
    }
}
