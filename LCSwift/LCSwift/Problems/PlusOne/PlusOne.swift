//
//  PlusOne.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 12/03/25.
//

import Foundation

final class PlusOne {
    static func plusOne(_ digits: [Int]) -> [Int] {
        var output: [Int] = digits
        output.reserveCapacity(digits.count)
        for (offset, _) in output.enumerated().reversed() {
            output[offset] += 1
            output[offset] %= 10
            if output[offset] != 0 {
                return output
            }
        }
        output.insert(1, at: 0)
        return output
    }
}
