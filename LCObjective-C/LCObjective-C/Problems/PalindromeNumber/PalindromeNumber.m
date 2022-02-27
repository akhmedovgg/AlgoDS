//
//  PalindromeNumber.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "PalindromeNumber.h"

@implementation PalindromeNumber

+ (BOOL)isPalindrome:(int)n
{
    if (n < 0) {
        return false;
    }
    
    int m = n;
    int reversedNumber = 0;
    while (m != 0) {
        reversedNumber = reversedNumber * 10 + m % 10;
        m /= 10;
    }
    return reversedNumber == n;
}

@end
