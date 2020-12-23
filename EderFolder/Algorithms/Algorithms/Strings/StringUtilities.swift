//
//  StringUtilities.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 12/7/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import Foundation

extension String {
    
    static func intToString(input: Int) -> String {
        var input = input
        var sign = ""
        var result = ""
        
        if input < 0 {
            sign = "-"
        }
        
        repeat {
            result = String(abs(input % 10)) + result
            input /= 10
        } while input != 0
    
        return sign + result
    }
    
    func convertToInt() -> Int {
        var sign = 1
        var result = 0
        let digits = Array(self)
        var firstDigit = 0
        
        if digits[0] == "-" {
            sign = -1
            firstDigit = 1
        } else if digits[0] == "+"  {
            firstDigit = 1
        }
        
        for index in firstDigit..<digits.count {
            result = (result * 10) + (Int(String(digits[index])) ?? 0)
        }
        
        return result * sign
    }
    
    func isPalindrome() -> Bool {
        let characters = Array(self)
        var leftIndex = 0
        var rightIndex = characters.count - 1
        
        
        while leftIndex < rightIndex {
            while(!characters[leftIndex].isLetter && leftIndex<rightIndex ){
                leftIndex += 1
            }
            
            while(!characters[rightIndex].isLetter && leftIndex<rightIndex ){
                rightIndex -= 1
            }
            
            if characters[leftIndex].lowercased() != characters[rightIndex].lowercased() {
                return false
            }
            
            leftIndex += 1
            
            rightIndex -= 1
        }
        
        return true
    }
    
    static func replaceAndRemove(input: inout[String], size: Int) -> [String] {
        var numberOfA = 0
        var numberCharacters = 0
        
        for index in 0..<size {
            if input[index] != "b" {
                input[numberCharacters] = input[index]
                numberCharacters += 1
            }
            
            if input[index] == "a" {
                numberOfA += 1
            }
        }
        
        var indexBackwards = numberCharacters - 1
        
        numberCharacters += numberOfA - 1
        let finalNumberOfElements = numberCharacters
        
        while indexBackwards >= 0 {
            if input[indexBackwards] == "a" {
               input[numberCharacters] = "d"
                numberCharacters -= 1
                input[numberCharacters] = "d"
                numberCharacters -= 1
            } else {
                input[numberCharacters] = input[indexBackwards]
                numberCharacters -= 1
            }
            
            indexBackwards -= 1
        }
        
        return Array(input[0...finalNumberOfElements])
    }
}
