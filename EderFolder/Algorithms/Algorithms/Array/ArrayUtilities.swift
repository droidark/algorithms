//
//  ArrayUtilities.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 12/3/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import Foundation

class ArrayUtilities {
    typealias Position = (x:Int, y:Int)
    
    public static func matrixSpiralOrder(input: [[Int]]) -> [Int] {
        var result = [Int]()
        var level = 0
        
        while let array = levelArray(input: input, level: level) {
            result.append(contentsOf: array)
            level += 1
        }
        
        return result
    }
    
    /*
     * Level es numero de niveles de afuera hacia dentro
     */
    
    private static func levelArray(input: [[Int]], level: Int) -> [Int]? {
        guard (level * 2) + 2 <= input.count else {
            return checkElementIsInMiddle(index: level, input: input)
        }
        
        var result = [Int]()
        let limit = input.count - 1 - level
        let initialPosition = Position(y:level, x:level)
        var lastPosition = initialPosition
        
        for index in level...limit {
            result.append(input[level][index])
            lastPosition = Position(x:level, y:index)
        }
        
        for index in level...limit {
            if lastPosition != Position(x:index, y:limit) {
                result.append(input[index][limit])
                lastPosition = Position(x:index, y:limit)
            }
        }
        
        for index in Array(level...limit).reversed() {
            if lastPosition != Position(x:limit, y:index) {
                result.append(input[limit][index])
                lastPosition = Position(x:limit, y:index)
            }
        }
        
        for index in Array(level...limit).reversed() {
            if lastPosition != Position(x:index, y:level) && Position(x:index, y:level) != initialPosition {
                result.append(input[index][level])
                lastPosition = Position(x:index, y:level)
            }
        }
        
        return result
    }
    
    private static func checkElementIsInMiddle(index: Int, input: [[Int]]) -> [Int]? {
        return (input.count - 1) / 2 == index ? [input[index][index]] : nil
    }
}
