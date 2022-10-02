//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/RemoveElement/RemoveElement.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@3, @2, @2, @3]];
        NSNumber *num = @3;
        NSUInteger removedElementsCount = [RemoveElement removeElementNums:arr whereValue:num];
        NSLog(@"%lu", removedElementsCount);
        NSLog(@"Done");
    }
    return 0;
}
