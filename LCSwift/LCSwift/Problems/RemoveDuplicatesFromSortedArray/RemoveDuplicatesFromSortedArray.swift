//
//  RemoveDuplicatesFromSortedArray.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 20/07/22.
//

import Foundation

class RemoveDuplicatesFromSortedArray {
    static func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        var current = 1
        for index in current..<nums.count {
            guard nums[index - 1] != nums[index] else { continue }
            nums[current] = nums[index]
            current += 1
        }

//        Removing unnecessary array elements is optional, for this reason we will not remove them.
//        nums.removeSubrange(current..<nums.endIndex)
        
        return current
    }
}
