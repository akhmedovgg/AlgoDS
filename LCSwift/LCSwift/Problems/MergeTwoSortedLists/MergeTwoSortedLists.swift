//
//  MergeTwoSortedLists.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 18/07/22.
//

import Foundation

class MergeTwoSortedLists {
    
    class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    static func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let nums: [Int] = (convertListNodeToArray(list1) + convertListNodeToArray(list2)).sorted(by: { $0 < $1 })
        guard !nums.isEmpty else { return nil }
        
        let node = ListNode(nums.first!)
        var nextListNode: ListNode = node
        for num in nums.dropFirst() {
            nextListNode.next = ListNode(num)
            nextListNode = nextListNode.next!
        }
        
        return node
    }
    
    private static func convertListNodeToArray(_ list: ListNode?) -> [Int] {
        guard let list = list else { return [] }
        var result: [Int] = []
        var sequenceNode: ListNode = list
        while true {
            result.append(sequenceNode.val)
            guard sequenceNode.next != nil else { break }
            sequenceNode = sequenceNode.next!
        }
        return result
    }
}
