//
//  main.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

import Foundation

typealias ListNode = MergeTwoSortedLists.ListNode

let node1 = ListNode(1)
node1.next = ListNode(2)
node1.next!.next = ListNode(4)

let node2 = ListNode(1)
node2.next = ListNode(3)
node2.next!.next = ListNode(4)

let result = MergeTwoSortedLists.mergeTwoLists(node1, node2)

print(
    result
)

