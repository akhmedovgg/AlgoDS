//
//  FirstOccurrenceString.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 6/29/24.
//

import Foundation

final class FirstOccurrenceString {
    static func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let range = haystack.range(of: needle) else {
            return -1
        }
        return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
    }
}
