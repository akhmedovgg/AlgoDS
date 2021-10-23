//
//  TwoSum.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "TwoSum.h"

@implementation TwoSum

+ (NSArray *)twoSum:(NSArray *)nums target:(NSInteger)t
{
    NSInteger totalCount = [nums count];
    
    if (totalCount == 0 || totalCount < 2) {
        return [[NSArray alloc] init];
    }
    
    for (NSInteger xIndex = 0; xIndex < totalCount - 1; xIndex++) {
        for (NSInteger yIndex = xIndex + 1; yIndex < totalCount; yIndex++) {
            NSInteger x = [[nums objectAtIndex:xIndex] integerValue];
            NSInteger y = [[nums objectAtIndex:yIndex] integerValue];
            if (x + y == t) {
                return [[NSArray alloc] initWithObjects:[NSNumber numberWithInteger:xIndex], [NSNumber numberWithInteger:yIndex], nil];
            }
        }
    }
    
    return [[NSArray alloc] init];
}

@end
