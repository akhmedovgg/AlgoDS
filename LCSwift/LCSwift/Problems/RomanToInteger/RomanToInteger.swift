//
//  RomanToInteger.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 27/02/22.
//

import Foundation

class RomanToInteger {    
    static func romanToInt(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        
        let dictionary = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000,
        ]
        let nums = s.reversed().compactMap { dictionary[String($0)] }
        var pre = nums.first!
        
        return nums.dropFirst().reduce(pre) { partialResult, num in
            var result = partialResult
            if num < pre {
                result -= num
            } else {
                result += num
            }
            pre = num
            return result
        }
    }
}
