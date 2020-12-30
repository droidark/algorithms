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
    }
}
