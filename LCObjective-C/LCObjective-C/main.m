//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/LengthOfLastWord/LengthOfLastWord.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger length = [LengthOfLastWord lengthOfLastWord:@"hello world moon ssadsad    f    ee "];
        NSLog(@"%li", length);
    }
    return 0;
}
