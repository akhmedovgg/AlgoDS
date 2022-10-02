//
//  RemoveElement.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 03/10/22.
//

import Foundation

class RemoveElement {
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var match = nums.count
        nums.removeAll {
            if $0 == val {
                match -= 1
                return true
            }
            return false
        }
        return nums.count
    }
}
