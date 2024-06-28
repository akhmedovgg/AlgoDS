//
//  LengthOfLastWord.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 6/29/24.
//

#import <Foundation/Foundation.h>
#import "LengthOfLastWord.h"

@implementation LengthOfLastWord

+(NSInteger) lengthOfLastWord:(NSString *)string {
    NSInteger length = 0;
    for (NSInteger i = [string length] - 1; i >= 0; i--) {
        NSString *subString = [string substringWithRange:NSMakeRange(i, 1)];
        if (![subString isEqualToString:@" "]) {
            length += 1;
        } else if (length > 0) {
            return length;
        }
    }
    return length;
}

@end
