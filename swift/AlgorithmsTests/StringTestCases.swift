//
//  StringTestCases.swift
//  AlgorithmsTests
//
//  Created by eder  morelos vargas  on 12/7/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import XCTest
@testable import Algorithms

class StringTestCases: XCTestCase {
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 6.2  Base Conversion
     */
    
    func testStringToInt() {
        let string = "1234567"
        let string2 = "505050505058"
        let string3 = "-1234567"
        let string4 = "+987652840"
        let string5 = "+84391850"
        
        let integer = 1234567
        let integer2 = 505050505058
        let integer3 = -1234567
        let integer4 = 987652840
        let integer5 = 84391850
        
        XCTAssertTrue(string.convertToInt() == integer)
        XCTAssertTrue(string2.convertToInt() == integer2)
        XCTAssertTrue(string3.convertToInt() == integer3)
        XCTAssertTrue(string4.convertToInt() == integer4)
        XCTAssertTrue(string5.convertToInt() == integer5)
        
        XCTAssertTrue(String.intToString(input: integer) == string)
        XCTAssertTrue(String.intToString(input: integer2) == string2)
        XCTAssertTrue(String.intToString(input: integer3) == string3)
        XCTAssertTrue(String.intToString(input: integer4) == "987652840")
        XCTAssertTrue(String.intToString(input: integer5) == "84391850")
    }
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 6.4  Replace And Remove. Assuming there is enough space to hold the result
     *  Remove `b` and replace `a`
     *  Time Complexity O(n)
     *  Space Complexity 0
     */
    
    func testReplaceAndRemove() {
        var example1 = ["a","b","c","d"]
        var example4 = ["b","c","d"]
        var example5 = ["a","a","c","d","a","a","a","a"]
        var example7 = ["a","b","c","d"]
        var example8 = ["a","a","c","d","a","a","a","a","e","f"]
        
        XCTAssertTrue(String.replaceAndRemove(input: &example1, size: 4) == ["d","d","c","d"])
        XCTAssertTrue(String.replaceAndRemove(input: &example4, size: 3) == ["c","d"])
        XCTAssertTrue(String.replaceAndRemove(input: &example5, size: 5) == ["d","d","d","d","c","d","d","d"])
        XCTAssertTrue(String.replaceAndRemove(input: &example7, size: 1) == ["d","d"])
        XCTAssertTrue(String.replaceAndRemove(input: &example8, size: 6) == ["d","d","d","d","c","d","d","d","d","d"])
    }
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 6.5 Palindrome
     *  Time Complexity O(n)
     *  Space Complexity 0
     */
    
    func testPalindrome() {
        let example1 = "A man a plan a canal panama"
        let example2 = "Eder"
        let example3 = "the house is yellow"
        let example4 = "A man, a plan, a canal panama"
        let example5 = "A man, a plan, a canal panama."
        let example6 = "eeddxddee"
        let example7 = "eeddddee"
        let example8 = "eeddxddeh"

        
        XCTAssertTrue(example1.isPalindrome() == true)
        XCTAssertTrue(example2.isPalindrome() == false)
        XCTAssertTrue(example3.isPalindrome() == false)
        XCTAssertTrue(example4.isPalindrome() == true)
        XCTAssertTrue(example5.isPalindrome() == true)
        XCTAssertTrue(example6.isPalindrome() == true)
        XCTAssertTrue(example7.isPalindrome() == true)
        XCTAssertTrue(example8.isPalindrome() == false)
    }
}
