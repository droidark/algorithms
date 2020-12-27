//
//  ListNode.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 12/25/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import Foundation

class ListNode {
    var value = 0
    var next: ListNode?
    var tail: ListNode?
    
    init(data: Int){
        self.value = data
    }
    
    func appendValue(data: Int){
        let lastNode = ListNode(data: data)
        
        tail = tail ?? self
        tail?.next = lastNode
        tail = lastNode
    }
    
    func appendNode(node: ListNode) {
        tail = tail ?? self
        
        tail?.next = node
        
        var currentNode: ListNode? = self
        
        while let lastElement = currentNode {
            currentNode = lastElement.next
        }
        
        tail = currentNode
    }
    
    func printList(){
        var currentNode: ListNode? = self
        
        print("================================")
        while let lastElement = currentNode {
            print(lastElement.value)
            currentNode = lastElement.next
        }
    }
    
    func asArray() -> [Int] {
        var currentNode: ListNode? = self
        var result = [Int]()
        
        while let lastElement = currentNode {
            result.append(lastElement.value)
            currentNode = lastElement.next
        }
        return result
    }
}
