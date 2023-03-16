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
//        var example = [1,4,60,2,3,5,0,34,0,534]
//        var example2 = [1,4,60,2,3,5,0,34,534,0]
//        var example3 = [0,1,4,60,2,3]
//        var example4 = [0,0,0,0,4]
//        var example5 = [10,10,10,10,0]
//        var example6 = [0,0,0]
//
//        sortZeros(input: &example)
//        sortZeros(input: &example2)
//        sortZeros(input: &example3)
//        sortZeros(input: &example4)
//        sortZeros(input: &example5)
//        sortZeros(input: &example6)
        
        
//        let uno =
//        let dos = 4
        
        print(Int(7/2))
        
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
    }
    
    /**
     * Book Crack Code TikTok
     *  Problem 3.3 Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
     *  Therefore, in real life, we would likely start a new stack when the previous stack exceeds some threshold.
     */
    
    func testSetOfStacks(){
        let setStacks = SetStacks(limitOfStacks: [3,3,3,3])
        
        setStacks.push(1)
        setStacks.push(2)
        setStacks.push(3)
        setStacks.push(4)
        
        print(setStacks.stacks)
        
//        XCTAssertTrue(setStacks.pop() == 4)
//        XCTAssertTrue(setStacks.pop() == 3)
        
        
    }
    
    /**
     * Book Crack Code TikTok
     *  Problem 2.5 Tower Hanoi
     *  Therefore, in real life, we would likely start a new stack when the previous stack exceeds some threshold.
     */
    
    func testTowerHanoi(){
        var stack1: Stack<Int> = {
            var stack = Stack<Int>()
            stack.push(5)
            stack.push(10)
            stack.push(15)

            return stack
        }()
        
        var stack2 = Stack<Int>()
        var stack3 = Stack<Int>()
        
        StackUtilities.towersHanoi(source: &stack1, target: &stack3, aux: &stack2, numberDiscs: 3)
        
        
    }
}
