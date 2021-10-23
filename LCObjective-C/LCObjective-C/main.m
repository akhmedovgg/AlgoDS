//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/PalindromeNumber/PalindromeNumber.h"
#import "Problems/TwoSum/TwoSum.h"

void runPalindromeNumberTests(void) {
    int palindromeNumber = 1221;
    BOOL result = [PalindromeNumber isPalindrome:1221];
    NSLog(@"[Palindrome Number]: %i | Result: %i", palindromeNumber, result);
}

void runTwoSumTests(void) {
    NSInteger target = 9;
    NSArray *array = @[@2, @7, @11, @15];
    NSArray *result = [TwoSum twoSum:array target:target];
    NSLog(@"Number of items in array: %lu", [result count]);
    for (NSNumber *n in result) {
        NSLog(@"[Index] %@", n);
    }
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        runTwoSumTests();
    }
    return 0;
}
