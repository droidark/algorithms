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
    private var tail: ListNode?
    
    var lastNode: ListNode {
        return tail ?? lastElement()
    }
    
    init(data: Int){
        self.value = data
    }

    private func lastElement() -> ListNode {
        var currentNode: ListNode? = self
        var lastNode = self
        
        while let lastElement = currentNode {
            currentNode = lastElement.next
            lastNode = lastElement
        }
        
        return lastNode
    }
    
    func appendValue(data: Int){
        let lastNode = ListNode(data: data)
        
        tail = tail ?? lastElement()
        tail?.next = lastNode
        tail = lastNode
    }
    
    func appendNode(node: ListNode) {
        guard node !== self else {
            print("Cannot append node to the existing list. It will create a cycle")
            return
        }
        
        tail = tail ?? lastElement()
        
        tail?.next = node
        
        var currentNode: ListNode? = self
        
        while let lastElement = currentNode {
            currentNode = lastElement.next
            tail = lastElement
        }
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
