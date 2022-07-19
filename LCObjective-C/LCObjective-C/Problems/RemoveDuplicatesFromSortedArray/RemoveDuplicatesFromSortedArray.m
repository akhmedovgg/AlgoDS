//
//  RemoveDuplicatesFromSortedArray.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 20/07/22.
//

#import <Foundation/Foundation.h>
#include "RemoveDuplicatesFromSortedArray.h"

//static func removeDuplicates(_ nums: inout [Int]) -> Int {
//    guard nums.count > 1 else { return nums.count }
//    var current = 1
//    for index in current..<nums.count {
//        guard nums[index - 1] != nums[index] else { continue }
//        nums[current] = nums[index]
//        current += 1
//    }
//
////        Removing unnecessary array elements is optional, for this reason we will not remove them.
////        nums.removeSubrange(current..<nums.endIndex)
//
//    return current
//}

@implementation RemoveDuplicatesFromSortedArray

+ (NSUInteger)removeDuplicates:(NSMutableArray *)nums {
    if ([nums count] < 2) {
        return [nums count];
    }
    NSUInteger current = 1;
    for (NSUInteger index = current; index < [nums count]; index++) {
        if (nums[index - 1] == nums[index]) { continue; }
        nums[current] = nums[index];
        current += 1;
    }
    return current;
}

@end

