//
//  Chapter2.swift
//  swiftcodingchallenges
//
//  Created by Max Magee on 9/12/19.
//  Copyright © 2019 Max Magee. All rights reserved.
//

import Foundation

// Numbers
class Chapter2 {
    
    /// Write a function that counts from 1 through 100, and prints "Fizz" if the counter is evenly divisible by 3, "Buzz" if it's evenly divisible by 5, and "Fizz Buzz" if it's evenly divisible by 3 and 5, or the counter number for all other cases
    func challenge16() {
        for num in 1...100 {
            if num % 15 == 0 {
                print("Fizz Buzz")
            } else  if num % 5 == 0 {
                print("Buzz")
            } else if num % 3 == 0 {
                print("Fizz")
            } else {
                print(num)
            }
        }
    }
    
    /// Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive
    ///
    /// - Parameters:
    ///   - min: A positive minimum integer bound
    ///   - max: A positive maximum integer bound
    /// - Returns: An integer between the minimum and maximum bound
    func challenge17(min: Int, max: Int) -> Int {
        return Int.random(in: min...max)
    }
    
    /// Create a function that accepts two positive integers, and raises the first to the power of the second (without using the built-in pow() function
    ///
    /// - Parameters:
    ///   - num: The number to raise
    ///   - power: The power to raise the number to
    /// - Returns: An integer result of the number raised to the power provided
    func challenge18(num: Int, power: Int) -> Int {
        guard num >= 0 && power >= 0 else { return 0 }
        if power == 0 { return 1 }
        
        var result = num
        
        for _ in 1..<power {
            result *= num
        }
        
        return result
    }
    
    /// Swap two positive variable integers, a and b, without using a temporary variable
    ///
    /// - Parameters:
    ///   - a: The first integer
    ///   - b: The second integer
    func challenge19( a: inout Int, b: inout Int) {
        // a: 3, b: 2
        // a = a + b // a: 5, b: 2
        // b = a - b // b: 3
        // a = a - b // a: 2, b, 3
        a = a + b
        b = a - b
        a = a - b
    }
}
