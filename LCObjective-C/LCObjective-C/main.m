//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/LongestCommonPrefix/LongestCommonPrefix.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [LongestCommonPrefix longestCommonPrefix:@[
            @"flow",
            @"flowers",
            @"flight",
        ]]);
    }
    return 0;
}
