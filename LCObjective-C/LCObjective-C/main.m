//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/PalindromeNumber/PalindromeNumber.h"

void runPalindromeNumberTests(void) {
    int palindromeNumber = 1221;
    BOOL result = [PalindromeNumber isPalindrome:1221];
    NSLog(@"[Palindrome Number]: %i | Result: %i", palindromeNumber, result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        runPalindromeNumberTests();
    }
    return 0;
}
