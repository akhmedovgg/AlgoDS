//
//  ListNode.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 18/07/22.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@implementation ListNode

@synthesize val, next;

- (instancetype)initWithVal:(NSInteger)val {
    self = [super init];
    if (self) {
        [self setVal:val];
    }
    return self;
}

- (instancetype)initWithVal:(NSInteger)val andNextListNode:(ListNode *)nextListNode {
    self = [super init];
    if (self) {
        [self setVal:val];
        [self setNext:next];
    }
    return self;
}

@end
