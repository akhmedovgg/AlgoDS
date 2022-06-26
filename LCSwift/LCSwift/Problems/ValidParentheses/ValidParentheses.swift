//
//  ValidParentheses.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 26/06/22.
//

import Foundation

class ValidParentheses {
    static func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var parenthesesStack: [String] = []
        let parenthesePairs: [String: String] = [
            "(": ")",
            "[": "]",
            "{": "}"
        ]
        
        for ch in s.map({ String($0) }) {
            let openParenthese = parenthesePairs.contains(where: { $0.key == ch })
            if openParenthese {
                parenthesesStack.append(ch)
            } else {
                guard let lastParenthese = parenthesesStack.last, parenthesePairs[lastParenthese] == ch else { return false }
                parenthesesStack.removeLast()
            }
        }
                
        return parenthesesStack.isEmpty
    }
}
