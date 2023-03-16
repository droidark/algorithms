//
//  Stack.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 12/30/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import Foundation

struct Stack<T: Comparable> {
    private var myArray: [T] = []
    
    /*
     * This array will keep previous max element
     * in case last element is popped 
     */
    
    private var max: [T] = []
    
    mutating func push(_ element: T){
        myArray.append(element)
//        max.append(Swift.max(element, max.last ?? element))
    }
    
    mutating func pop() -> T? {
        _ = max.popLast()
        return myArray.popLast()
    }
    
    func peek() -> T? {
        return myArray.last
    }
    
    func maxElement() -> T? {
        return max.last
    }
}
