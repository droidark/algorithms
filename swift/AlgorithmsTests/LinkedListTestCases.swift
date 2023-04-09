//
//  LinkedListTestCases.swift
//  AlgorithmsTests
//
//  Created by eder  morelos vargas  on 12/25/20.
//  Copyright © 2020 eder  morelos vargas . All rights reserved.
//

import XCTest
@testable import Algorithms

class LinkedListTestCases: XCTestCase {

    lazy var list1: ListNode = {
        let list = ListNode(data: 1)
        
        list.appendValue(data: 2)
        list.appendValue(data: 3)
        list.appendValue(data: 6)
        list.appendValue(data: 8)
        list.appendValue(data: 12)
        list.appendValue(data: 32)
        list.appendValue(data: 40)
        
        return list
    }()
    
    lazy var list2: ListNode = {
        let list = ListNode(data: 3)
        
        list.appendValue(data: 6)
        list.appendValue(data: 7)
        list.appendValue(data: 8)
        list.appendValue(data: 10)
        
        return list
    }()
    
    lazy var list3: ListNode = {
        let list = ListNode(data: 1)
        
        list.appendValue(data: 8)
        
        return list
    }()
    
    lazy var list4: ListNode = {
        let list = ListNode(data: 3)
        
        list.appendValue(data: 4)
        list.appendValue(data: 6)
        list.appendValue(data: 7)
        list.appendValue(data: 8)
        list.appendValue(data: 9)
        list.appendValue(data: 19)
        
        return list
    }()
    
    lazy var list5: ListNode = {
        let list = ListNode(data: 2)
        
        list.appendValue(data: 7)
        
        return list
    }()
    
    lazy var list6: ListNode = {
        let list = ListNode(data: 2)
        
        list.appendValue(data: 7)
        
        return list
    }()
    
    lazy var list7: ListNode = {
        let list = ListNode(data: 21)
        
        list.appendValue(data: 72)
        
        return list
    }()
    
    lazy var circularList: ListNode = {
        let list = ListNode(data: 3)
        let beginningLoop = ListNode(data: 10)
        let endLoop = ListNode(data: 19)
        endLoop.next = beginningLoop
        
        list.appendValue(data: 4)
        list.appendValue(data: 6)
        list.appendValue(data: 7)
        list.appendValue(data: 8)
        list.appendValue(data: 9)
        list.appendNode(node: beginningLoop)
        list.appendValue(data: 11)
        list.appendValue(data: 12)
        list.appendValue(data: 13)
        list.appendValue(data: 14)
        list.appendValue(data: 15)
        list.appendNode(node: endLoop, pointTailToLastElement: false)
        
        return list
    }()
    
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 7.2 Reverse a single Sublist
     *  Time Complexity O(n+m)
     *  Space Complexity O(1)
     */
    
        
    func testMergeTwoSortedLists() {
        XCTAssertTrue(LinkedList.mergeTwoSortedList(list1: &list1, list2: &list2).asArray() == [1,2,3,3,6,6,7,8,8,10,12,32,40])
        XCTAssertTrue(LinkedList.mergeTwoSortedList(list1: &list7, list2: &list6).asArray() == [2,7,21,72])
        XCTAssertTrue(LinkedList.mergeTwoSortedList(list1: &list5, list2: &list3).asArray() == [1,2,7,8])
    }
    
    func testMergeTwoSortedLists1() {
        XCTAssertTrue(LinkedList.mergeTwoSortedList(list1: &list1, list2: &list4).asArray() == [1,2,3,3,4,6,6,7,8,8,9,12,19,32,40])
        XCTAssertTrue(LinkedList.mergeTwoSortedList(list1: &list5, list2: &list6).asArray() == [2,2,7,7])
    }
    
    /**
     * Book Elements of Programming Interviews In Java
     *  Problem 7.2 Reverse a single List
     *  Time Complexity O(f). Time complexity is dominated by the search of fth(end of list)
     */
    
    func testReverseSublist() {
        XCTAssertTrue(LinkedList.reverseSublist(list1: list1, start: 1, end: 5).asArray() == [8,6,3,2,1])
        XCTAssertTrue(LinkedList.reverseSublist(list1: list2, start: 2, end: 5).asArray() == [10,8,7,6])
        XCTAssertTrue(LinkedList.reverseSublist(list1: list4, start: 5, end: 7).asArray() == [19,9,8])
    }
    
    /**
     * Book Elements of Programming Interviews In Java
     * Problem 7.3 Test Cyclicity
     *  
     */
    
    func testCyclicity() {
        list3.appendNode(node: list2)
        list3.lastNode.next = list2
        
        list6.appendNode(node: list7)
        list6.lastNode.next = list7
        
        XCTAssertTrue(LinkedList.testCyclicity(list: list3)?.value == list2.value)
        XCTAssertTrue(LinkedList.testCyclicity(list: list6)?.value == list7.value)
        XCTAssertTrue(LinkedList.testCyclicity(list: list1) == nil)
    }
    
    /**
     * Book  CrackCode (Tik Tok)
     * Problem 2.2  Linked List
     *
     */
    
    func testFindNthElement() {
        XCTAssertTrue(LinkedList.findNthToLast(list: list1, nth: 2)?.value == 32)
        XCTAssertTrue(LinkedList.findNthToLast(list: list1, nth: 3)?.value == 12)
        XCTAssertTrue(LinkedList.findNthToLast(list: list1, nth: 4)?.value == 8)
        XCTAssertTrue(LinkedList.findNthToLast(list: list1, nth: 5)?.value == 6)
    }
    
    /**
     * Book  CrackCode (Tik Tok)
     * Problem 2.5  Linked List
     *
     */
    
    func testReturnBeginningLoop() {
        XCTAssertTrue(LinkedList.returnBeginningLoop(list: circularList)?.value == 10)
        XCTAssertTrue(LinkedList.returnBeginningLoop(list: list1) == nil)
        XCTAssertTrue(LinkedList.returnBeginningLoop(list: list2) == nil)
    }
    
    /**
     * Book  CrackCode (Tik Tok)
     * Problem 2.4  Linked List
     *
     */
    
    func testSumTwoList() {
        print(Int(18 + 27))
        XCTAssertTrue(LinkedList.sumTwoList(list1: list3, list2: list5).asArray() == [4,5])

        let list1 = ListNode(data: 3)
        let list8 = ListNode(data: 8)
        XCTAssertTrue(LinkedList.sumTwoList(list1: list1, list2: list8).asArray() == [1,1])

        let list99 = ListNode(data: 9)
            list99.appendValue(data: 9)

        XCTAssertTrue(LinkedList.sumTwoList(list1: list99, list2: list99).asArray() == [1,9,8])
        
        let list987690 = ListNode(data: 9)
        list987690.appendValue(data: 8)
        list987690.appendValue(data: 7)
        list987690.appendValue(data: 6)
        list987690.appendValue(data: 9)
        list987690.appendValue(data: 0)
        
        let list567919 = ListNode(data: 5)
        list567919.appendValue(data: 6)
        list567919.appendValue(data: 7)
        list567919.appendValue(data: 9)
        list567919.appendValue(data: 1)
        list567919.appendValue(data: 9)
        
        print(LinkedList.sumTwoList(list1: list987690, list2: list567919).asArray())
        
        XCTAssertTrue(LinkedList.sumTwoList(list1: list987690, list2: list567919).asArray() == [1,5,5,5,6,0,9])
    }
}
