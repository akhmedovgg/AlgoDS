//
//  TwoSum.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

import Foundation

class TwoSum {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return []
        }
        let totalCount = nums.count
        for xIndex in 0..<totalCount - 1 {
            for yIndex in (xIndex + 1)..<totalCount {
                if nums[xIndex] + nums[yIndex] == target {
                    return [xIndex, yIndex]
                }
            }
        }
        return []
    }
}
