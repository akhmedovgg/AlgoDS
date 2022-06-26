//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/LongestCommonPrefix/LongestCommonPrefix.h"
#import "Problems/ValidParentheses/ValidParentheses.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *s = @"[[[{}{}[]((([])[])[]){}{}{}()]]]";
        BOOL isValid = [ValidParentheses isValid:s];
        NSLog(@"Is valid: %i", isValid);
    }
    return 0;
}
