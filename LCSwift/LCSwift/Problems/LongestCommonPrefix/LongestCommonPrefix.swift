//
//  LongestCommonPrefix.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 12/03/22.
//

import Foundation

class LongestCommonPrefix {
    static func longestCommonPrefix(_ strs: [String]) -> String {
        guard var prefix = strs.min() else { return "" }
        while !prefix.isEmpty {
            if strs.allSatisfy({ $0.hasPrefix(prefix) }) {
                break
            }
            prefix.removeLast()
        }
        return prefix
    }
}
