//
//  RomanToInteger.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 27/02/22.
//

#import <Foundation/Foundation.h>
#import "RomanToInteger.h"

@implementation RomanToInteger

+ (NSNumber *)romanToInt:(NSString *)str {
    if ([str length] == 0) {
        return [[NSNumber alloc] init];
    }
    
    NSDictionary * dict = @{
        @"I": @1,
        @"V": @5,
        @"X": @10,
        @"L": @50,
        @"C": @100,
        @"D": @500,
        @"M": @1000,
    };
    NSMutableString *reversedImmutableString = [[NSMutableString alloc] init];
    
    for (NSUInteger i = [str length]; i > 0; i--) {
        NSRange subStrRange = NSMakeRange(i - 1, 1);
        [reversedImmutableString appendString:[str substringWithRange:subStrRange]];
    }
    
    NSMutableArray *nums = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [reversedImmutableString length]; i++) {
        NSString *ch = [reversedImmutableString substringWithRange:NSMakeRange(i, 1)];
        if ([dict objectForKey:ch] != nil) {
            [nums addObject:[dict objectForKey:ch]];
        }
    }
    
    NSNumber *pre = [nums firstObject];
    [nums removeObjectAtIndex:0];

    NSNumber *result = [pre copy];
    for (NSUInteger i = 0; i < [nums count]; i++) {
        NSNumber *num = [nums objectAtIndex:i];
        if ([num isLessThan:pre]) {
            result = [NSNumber numberWithInteger:[result integerValue] - [num integerValue]];
        } else {
            result = [NSNumber numberWithInteger:[result integerValue] + [num integerValue]];
        }
        pre = num;
    }

    return result;
}

@end

