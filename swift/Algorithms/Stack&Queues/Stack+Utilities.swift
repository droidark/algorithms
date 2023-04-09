//
//  Stack+Utilities.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 8/25/21.
//  Copyright © 2021 eder  morelos vargas . All rights reserved.
//

import Foundation

class StackUtilities {
    static func towersHanoi(source: inout Stack<Int>, target: inout Stack<Int>, aux: inout Stack<Int>, numberDiscs: Int) {
        if numberDiscs > 0 {
            towersHanoi(source: &source, target: &aux, aux: &target, numberDiscs: numberDiscs - 1)
            moveDisc(from: &source, to: &target)
            towersHanoi(source: &aux, target: &target, aux: &source, numberDiscs: numberDiscs - 1)
        }
    }
    
    private static func moveDisc(from: inout Stack<Int>, to: inout Stack<Int>) {
        guard let value = from.pop() else { return }
        
        to.push(value)
    }
}


// This class has some bugs, working with some flaws
class SetStacks {
    let limitOfStacks: [Int]
    
    var currentPosition: (stack: Int, index: Int) = (0,0)
     var stacks: [Stack<Int>] = []
        
    init(limitOfStacks: [Int]) {
        self.limitOfStacks = limitOfStacks
    }
    
    func getLastStack() -> Stack<Int>? {
        if stacks.indices.contains(currentPosition.stack) {
            return stacks[currentPosition.stack]
        }
        
        return nil
    }
    
    func push(_ value: Int) {
        var appendStack = false
        
        if currentPosition.index >= limitOfStacks[currentPosition.stack] - 1 {
            currentPosition.stack += 1
            appendStack = true
        }
        
        if var stack = getLastStack() {
            stack.push(value)
        } else {
            var stack = Stack<Int>()
            stack.push(value)
            stacks.append(stack)
        }
        
        currentPosition.index += 1
    }
    
//    func pop() -> Int? {
//        guard currentPosition.stack >= 0 else { return nil }
//        
//        var lastStack = getLastStack()
//        
//        if let value = lastStack.pop() {
//            return value
//        } else {
//            stacks.remove(at: currentPosition.stack)
//            currentPosition.stack -= 1
//            return pop()
//        }
//    }
}
