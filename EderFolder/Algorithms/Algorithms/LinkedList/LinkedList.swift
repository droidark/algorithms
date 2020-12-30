//
//  LinkedList.swift
//  Algorithms
//
//  Created by eder  morelos vargas  on 12/25/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import Foundation

class LinkedList {
    
    public static func mergeTwoSortedList(list1: inout ListNode, list2: inout ListNode) -> ListNode {
        let dummyHead = ListNode(data: 0)
        var result: ListNode?  = dummyHead
        
        var pointer1: ListNode? = list1
        var pointer2: ListNode? = list2
        
        while let node1 = pointer1, let node2 = pointer2 {
            if node1.value < node2.value {
                result?.next = node1
                pointer1 = node1.next
            } else if node2.value < node1.value {
                result?.next = node2
                pointer2 = node2.next
            } else {
                result?.next = node1
                pointer1 = node1.next
                result = result?.next
                result?.next = node2
                pointer2 = node2.next
            }
            result = result?.next
        }
        
        result?.next = pointer1 != nil ? pointer1 : pointer2
        
        return dummyHead.next ?? ListNode(data: 0)
    }
    
    /**
     * This function utilizes three nodes previousNode(0), currentNode(1), followingNode(2). It will change the position of elements (1,2)
     * currentNode.next = followingNode.next => 1.next = 2.next => One points to Three
     * followingNode.next = previousNode.next => 2.next = 0.next => Two points to One
     * previousNode.next = followingNode => 0.next = 2 =>  Cero points to Two
     *  0 -> 1 -> 2 -> 3 => 0 -> 2 -> 1 -> 3
     */
    
    public static func reverseSublist(list1: ListNode, start: Int, end: Int) -> ListNode {
        var dummyHead: ListNode? = ListNode(data: 0)
        dummyHead?.appendNode(node: list1)
        
        var sublistHead: ListNode? = dummyHead
        var count = 1
        var start = start
        
        while count < start {
            sublistHead = sublistHead?.next
            count += 1
        }
        
        dummyHead = sublistHead
        
        let sublistIter = sublistHead?.next
        
        while start < end {
            let followingNode = sublistIter?.next
            sublistIter?.next = followingNode?.next
            followingNode?.next = sublistHead?.next
            sublistHead?.next = followingNode
            start += 1
        }
        
        sublistIter?.next = nil
        
        return dummyHead!.next!
    }
    
    public static func testCyclicity(list1: ListNode) -> ListNode? {
        var slow: ListNode? = list1
        var fast: ListNode? = list1
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                var cycleLen = 0
                
                // Calculate cycle length
                repeat {
                    cycleLen += 1
                    fast = fast?.next
                } while slow !== fast
                
                var advancedIterator: ListNode? = list1
                var iter: ListNode? = list1
                
                // Start of cycle
                while cycleLen > 0 {
                    advancedIterator = advancedIterator?.next
                    cycleLen -= 1
                }
                
                // Both iterations advanced in tandem
                while iter !== advancedIterator {
                    iter = iter?.next
                    advancedIterator = advancedIterator?.next
                }
                
                return advancedIterator
            }
        }
        
        return nil
    }
}
