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
    
}
