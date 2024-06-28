//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/FirstOccurrenceString/FirstOccurrenceString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger position = [FirstOccurrenceString findPositionOfNeedle:@"helslo" fromHaystack:@"sayhello"];
        NSLog(@"%li", position);
    }
    return 0;
}
