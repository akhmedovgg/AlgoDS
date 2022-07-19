//
//  main.swift
//  LCSwift
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

import Foundation

var array = [1, 2, 2, 2, 2, 2, 3, 3]
let countOfUniqueElements = RemoveDuplicatesFromSortedArray.removeDuplicates(&array)

print(array)
print("Count of unique elements: \(countOfUniqueElements)")
