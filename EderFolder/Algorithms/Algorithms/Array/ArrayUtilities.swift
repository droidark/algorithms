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
    
    /*
     * Time Complexity O(n*2)
     * Space Complexity O(1)
     * Example: number of elements(3)
     * temp1: Initial (0,0) -> Position will move to the right, Final (0,3)
     * temp2: Initial (0,3) -> Position will move to the bottom, Final (3,3)
     * temp3: Initial (3,3) -> Position will move to the left, Final (3,0)
     * temp4: Initial (3,0) -> Position will move to the top, Final (0,0)
     */
    
    public static func rotateMatrix(input: inout[[Int]]){
        let matrixSize = input.count - 1
        
        for i in 0..<Int(input.count/2) {
            for j in i..<matrixSize-i {
                let temp1 = input[i][j]
                let temp2 = input[j][matrixSize-i]
                let temp3 = input[matrixSize-i][matrixSize-j]
                let temp4 = input[matrixSize-j][i]
                
                input[i][j] = temp4
                input[j][matrixSize-i] = temp1
                input[matrixSize-i][matrixSize-j] = temp2
                input[matrixSize-j][i] = temp3
            }
        }
    }
    
    /*
     * Eder's solution
     * Time Complexity O(n*2)
     * Space Complexity O(n*2)
     */
    
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
     * Eder's solution
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
