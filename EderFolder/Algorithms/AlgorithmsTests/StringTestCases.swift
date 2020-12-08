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
}
