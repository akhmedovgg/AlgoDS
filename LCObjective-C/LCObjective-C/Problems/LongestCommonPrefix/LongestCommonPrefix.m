//
//  LongestCommonPrefix.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 12/03/22.
//

#import <Foundation/Foundation.h>
#import "LongestCommonPrefix.h"

@interface LongestCommonPrefix()

+ (NSString *)min:(NSArray *)strs;

+ (BOOL)allHasPrefix:(NSArray *)strs prefix:(NSString *)prefix;

@end

@implementation LongestCommonPrefix

+ (NSString *)min:(NSArray *)strs {
    NSMutableString *min = [strs firstObject];
    for (NSString *str in strs) {
        if (str.length < min.length) {
            min = [[NSMutableString alloc] initWithString:str];
        }
    }
    return min;
}

+ (BOOL)allHasPrefix:(NSArray *)strs prefix:(NSString *)prefix {
    for (NSInteger i = 0; i < [strs count]; i++) {
        NSString *s = [strs objectAtIndex:i];
        if (![s hasPrefix:prefix]) {
            return false;
        }
    }
    return true;
}

+ (NSString *)longestCommonPrefix:(NSArray *)strs {
    if ([strs count] == 0) {
        return [[NSString alloc] init];
    } else if ([strs count] == 1) {
        return [strs firstObject];
    }
    
    NSMutableString *min = [[NSMutableString alloc] initWithString:[self min:strs]];
    while ([min length] > 0) {
        if ([self allHasPrefix:strs prefix:min]) {
            break;
        }
        [min deleteCharactersInRange:NSMakeRange([min length] - 1, 1)];
    }
    return min;
}

@end
