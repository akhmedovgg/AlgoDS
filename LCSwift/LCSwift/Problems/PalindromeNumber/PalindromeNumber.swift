//
//  PalindromeNumber.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

import Foundation

class PalindromeNumber {
    static func isPalindrome(_ x: Int) -> Bool {
        if x < 11 {
            return false
        }
        
        var y = x
        var reversedNumber: Int = 0
        
        while y != 0 {
            reversedNumber = reversedNumber * 10 + y % 10
            y /= 10
        }
        
        return reversedNumber == x
    }
}
