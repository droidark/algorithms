//
//  ArrayTestCases.swift
//  AlgorithmsTests
//
//  Created by eder  morelos vargas  on 12/3/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import XCTest
@testable import Algorithms

class ArrayTestCases: XCTestCase {

    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 5.18 Compute the spiral ordering of 2D Array
     */
    
    func testMatrixSpiralOrder() {
        
        let test2 = [
            [1,2],
            [3,4]
        ]
        
        let test3 = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        
        let test4 = [
            [1,2,3,4],
            [5,6,7,8],
            [9,10,11,12],
            [13,14,15,16]
        ]
        
        let test5 = [
            [1,2,3,4,5],
            [6,7,8,9,10],
            [11,12,13,14,15],
            [16,17,18,19,20],
            [21,22,23,24,25]
        ]
        
        let test7 = [
            [1,2,3,4,5,6,7],
            [8,9,10,11,12,13,14],
            [15,16,17,18,19,20,21],
            [22,23,24,25,26,27,28],
            [29,30,31,32,33,34,35],
            [36,37,38,39,40,41,42],
            [43,44,45,46,47,48,49]
        ]
        
        let test10 = [
            [1,2,3,4,5,6,7,8,9,10],
            [11,12,13,14,15,16,17,18,19,20],
            [21,22,23,24,25,26,27,28,29,30],
            [31,32,33,34,35,36,37,38,39,40],
            [41,42,43,44,45,46,47,48,49,50],
            [51,52,53,54,55,56,57,58,59,60],
            [61,62,63,64,65,66,67,68,69,70],
            [71,72,73,74,75,76,77,78,79,80],
            [81,82,83,84,85,86,87,88,89,90],
            [91,92,93,94,95,96,97,98,99,100]
        ]
        
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test2) == [1,2,4,3])
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test3) == [1,2,3,6,9,8,7,4,5])
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test4) == [1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10])
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test5) == [1,2,3,4,5,10,15,20,25,24,23,22,21,16,11,6,7,8,9,14,19,18,17,12,13])
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test7) == [1,2,3,4,5,6,7,14,21,28,35,42,49,48,47,46,45,44,43,36,29,22,15,8,
                                                                     9,10,11,12,13,20,27,34,41,40,39,38,37,30,23,16,
                                                                     17,18,19,26,33,32,31,24,
                                                                     25
                                                                    ])
        
        XCTAssert(ArrayUtilities.matrixSpiralOrder(input: test10) == [1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100,99,98,97,96,95,94,93,92,91,81,71,61,51,41,31,21,11,
                                                                      12,13,14,15,16,17,18,19,29,39,49,59,69,79,89,88,87,86,85,84,83,82,72,62,52,42,32,22,
                                                                      23,24,25,26,27,28,38,48,58,68,78,77,76,75,74,73,63,53,43,33,
                                                                      34,35,36,37,47,57,67,66,65,64,54,44,
                                                                      45,46,56,55
                                                                    ])
    }
    
    private func printArray(input: [[Int]]) {
        for row in input {
            print(row, separator: "", terminator: "")
            print("", terminator: "\n")
        }
    }
}
