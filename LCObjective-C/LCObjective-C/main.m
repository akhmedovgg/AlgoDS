//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/RomanToInteger/RomanToInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *num = [RomanToInteger romanToInt:@"MMXXII"];
        NSLog(@"%li", [num longValue]);
        
//        BOOL isPalindrome = [PalindromeNumber isPalindrome:10];
//        NSLog(@"Is palindrome: %i", isPalindrome);
    }
    return 0;
}
