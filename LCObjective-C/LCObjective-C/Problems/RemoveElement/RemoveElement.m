//
//  RemoveElement.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 03/10/22.
//

#import <Foundation/Foundation.h>
#import "RemoveElement.h"

@implementation RemoveElement

+ (NSUInteger)removeElementNums:(NSMutableArray *)nums whereValue:(NSNumber *)val {
    NSUInteger match = [nums count];
    for (NSUInteger i = 0; i < [nums count]; i++) {
        if ([[nums objectAtIndex:i] isEqualTo:val]) {
            [nums removeObjectAtIndex:i];
            match -= 1;
        }
    }
    return match;
}

@end
