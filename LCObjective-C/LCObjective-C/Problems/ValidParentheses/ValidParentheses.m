//
//  ValidParentheses.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 26/06/22.
//

#import <Foundation/Foundation.h>
#import "ValidParentheses.h"

@implementation ValidParentheses

+ (BOOL)isValid:(NSString *)s {
    if ([s length] % 2 != 0) { return NO; }
    NSMutableArray *parenthesesStack = [[NSMutableArray alloc] init];
    NSDictionary *parenthesePairs = [[NSDictionary alloc] initWithObjectsAndKeys:
                                     @")",
                                     @"(",
                                     @"]",
                                     @"[",
                                     @"}",
                                     @"{",
                                     nil];
    for (NSUInteger i = 0; i < s.length; i++) {
        NSString *substring = [s substringWithRange:NSMakeRange(i, 1)];
        BOOL isOpenParenthese = [[parenthesePairs allKeys] containsObject:substring];
        if (isOpenParenthese) {
            [parenthesesStack addObject:substring];
        } else {
            NSString *lastParenthese = [parenthesesStack lastObject];
            if ([[parenthesePairs objectForKey:lastParenthese] isEqualTo:substring]) {
                [parenthesesStack removeLastObject];
            }
        }
    }
    
    return [parenthesesStack count] == 0;
}

@end
