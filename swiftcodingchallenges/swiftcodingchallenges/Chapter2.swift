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
    func challenge19(a: inout Int, b: inout Int) {
        // a: 3, b: 2
        // a = a + b // a: 5, b: 2
        // b = a - b // b: 3
        // a = a - b // a: 2, b, 3
        a = a + b
        b = a - b
        a = a - b
    }
    
    /// Write a function that accepts an integer as its parameter and returns true if the number is prime
    ///
    /// - Parameter number: A positive integer greater than 1
    /// - Returns: True if the number is prime
    func challenge20(number: Int) -> Bool {
        guard number >= 2 else { return false }
        guard number != 2 else { return true }
        
        let upperBound = Int(ceil(sqrt(Double(number))))
        
        for i in 2...upperBound {
            if number % i == 0 {
                return false
            }
        }
        
        return true
    }
    
    /// Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either is not possible, return nil for it.
    ///
    /// - Parameter number: The input base 10 integer
    /// - Returns: A tuple containing the next highest and next lowest integers with the same number of 1s in their binary representation
    func challenge21(number: Int) -> (nextLowest: Int?, nextHighest: Int?) {
        let targetNumberOfOnes = getNumberOfOnesInBinaryRepresentation(of: number)
        var nextLowest: Int?
        var nextHighest: Int?
        var nextHighestTemp = number
        
        for i in (1..<number).reversed() {
            if getNumberOfOnesInBinaryRepresentation(of: i) == targetNumberOfOnes {
                nextLowest = i
                break
            }
        }
        
        while nextHighest == nil {
            nextHighestTemp += 1
            if getNumberOfOnesInBinaryRepresentation(of: nextHighestTemp) == targetNumberOfOnes {
                nextHighest = nextHighestTemp
            }
        }
        
        return (nextLowest: nextLowest, nextHighest: nextHighest)
    }
    
    
    /// Returns the number of 1s in the binary representation of a base 10 integer
    ///
    /// - Parameter number: A base 10 integer
    /// - Returns: The number of 1s in the binary representation of the input integer
    private func getNumberOfOnesInBinaryRepresentation(of number: Int) -> Int {
        let binaryString = String(number, radix: 2)
        
        return binaryString.filter { $0 == "1" }.count
    }
    
    /// Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits
    ///
    /// - Parameter input: The input number to reverse
    /// - Returns: The reversed result 8-bit unsigned int
    func challenge22(input: UInt8) -> UInt8 {
        let binaryInput = String(input, radix: 2)
        let paddedBinaryInput = String(repeating: "0", count: 8 - binaryInput.count) + binaryInput
        
        return UInt8(String(paddedBinaryInput.reversed()), radix: 2)!
    }
}
