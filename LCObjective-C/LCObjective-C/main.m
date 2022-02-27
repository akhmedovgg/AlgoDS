//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/PalindromeNumber/PalindromeNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL isPalindrome = [PalindromeNumber isPalindrome:10];
        NSLog(@"Is palindrome: %i", isPalindrome);
    }
    return 0;
}
