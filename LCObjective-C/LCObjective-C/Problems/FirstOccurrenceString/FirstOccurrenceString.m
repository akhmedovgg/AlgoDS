//
//  FirstOccurrenceString.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 6/29/24.
//

#import <Foundation/Foundation.h>
#import "FirstOccurrenceString.h"

@implementation FirstOccurrenceString

+(NSInteger) findPositionOfNeedle:(NSString *)needle fromHaystack: (NSString *)haystack {
    NSRange range = [haystack rangeOfString:needle];
    if (range.length == 0) {
        return -1;
    }
    return range.location;
}

@end
