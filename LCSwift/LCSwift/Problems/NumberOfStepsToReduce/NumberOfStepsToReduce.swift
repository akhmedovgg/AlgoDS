//
//  NumberOfStepsToReduce.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 6/30/24.
//

import Foundation

final class NumberOfStepsToReduce {
    @_optimize(speed)
    static func numberOfSteps(_ num: Int) -> Int {
        String(num, radix: 2).reduce(0, { $1 == "1" ? $0 + 2 : $0 + 1 }) - 1
    }
}
