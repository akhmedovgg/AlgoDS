//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/RemoveDuplicatesFromSortedArray/RemoveDuplicatesFromSortedArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@1, @1, @2]];
        NSUInteger count = [RemoveDuplicatesFromSortedArray removeDuplicates:arr];
        NSLog(@"%lu", (unsigned long)count);
//        NSLog(@"%@", sortedNode);
    }
    return 0;
}
