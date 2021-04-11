//
//  StackTestCases.swift
//  AlgorithmsTests
//
//  Created by eder  morelos vargas  on 12/30/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import XCTest
@testable import Algorithms

class StackTestCases: XCTestCase {
    
    lazy var stack1: Stack<Int> = {
        var stack = Stack<Int>()
        stack.push(5)
        stack.push(8)
        stack.push(9)
        stack.push(1)
        stack.push(4)
        stack.push(4)
        stack.push(10)
        stack.push(3)
        return stack
    }()
    
    lazy var stack2: Stack<Int> = {
        var stack = Stack<Int>()
        stack.push(5)

        return stack
    }()
    
    lazy var stack3: Stack<Int> = {
        var stack = Stack<Int>()
        stack.push(5)
        stack.push(10)

        return stack
    }()
    
    func sortZeros(input: inout[Int]) -> [Int] {
        var lastZeroIndex = input.count - 1
        let numberElements = input.count - 1
//        var temp = 0
        
        for index in 0...input.count - 1 {
            let realIndex = numberElements - index
            if input[realIndex] == 0 {
                input[realIndex] = input[lastZeroIndex]
                input[lastZeroIndex] = 0
                lastZeroIndex -= 1
            }
        }
        
        return input
    }
    
    // It could be much easier to use .reverted() or use descending ranges
    // Descending ranges doesn't exist in Swift
    // Reverted() interviewers had asked me to do it manually
    
    func testSortZeros() {
        var example = [1,4,60,2,3,5,0,34,0,534]
        var example2 = [1,4,60,2,3,5,0,34,534,0]
        var example3 = [0,1,4,60,2,3]
        var example4 = [0,0,0,0,4]
        var example5 = [10,10,10,10,0]
        var example6 = [0,0,0]
        
        sortZeros(input: &example)
        sortZeros(input: &example2)
        sortZeros(input: &example3)
        sortZeros(input: &example4)
        sortZeros(input: &example5)
        sortZeros(input: &example6)
        
    }
    
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 8.1 Stack with MAX APi
     *  Time Complexity O(1).
     *  Space Complexity O(n).
     */
    
    func testMaxNumber(){
        XCTAssert(stack1.maxElement() == 10)
        _ = stack1.pop()
        XCTAssert(stack1.maxElement() == 10)
        _ = stack1.pop()
        XCTAssert(stack1.maxElement() == 9)
        
        XCTAssert(stack2.maxElement() == 5)
        _ = stack2.pop()
        XCTAssert(stack2.maxElement() == nil)
        
        XCTAssert(stack3.maxElement() == 10)
        _ = stack3.pop()
        XCTAssert(stack3.maxElement() == 5)
        _ = stack3.pop()
        XCTAssert(stack3.maxElement() == nil)
        
        var hola = [Int: Int]()
        
        var dicitionary = [
            "a": 43,
            "b": 43,
            "c": 43,
            "d": 43,
            "e": 43
        ]
        
        let a = dicitionary.dropFirst()
        
        print(a)
        print(dicitionary)
        
    }
}
