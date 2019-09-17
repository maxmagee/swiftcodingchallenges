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
}