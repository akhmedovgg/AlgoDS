//
//  LengthOfLastWord.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 6/29/24.
//

import Foundation

final class LengthOfLastWord {
    static func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        for character in s.reversed() {
            if character != " " {
                length += 1
            } else if length > 0 {
                return length
            }
        }
        return length
    }
}
