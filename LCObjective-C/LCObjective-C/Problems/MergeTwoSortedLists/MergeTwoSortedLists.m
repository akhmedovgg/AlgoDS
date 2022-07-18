//
//  MergeTwoSortedLists.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 18/07/22.
//

#import <Foundation/Foundation.h>
#import "MergeTwoSortedLists.h"
#import "ListNode.h"

@interface MergeTwoSortedLists ()

+ (NSArray *)convertListNodeToArray: (ListNode * _Nullable)node;

@end


@implementation MergeTwoSortedLists

+ (ListNode *)mergeTwoLists:(ListNode *)list1 andList:(ListNode *)list2 {
    NSArray *nums = [[self convertListNodeToArray:list1] arrayByAddingObjectsFromArray:[self convertListNodeToArray:list2]];
    
    nums = [nums sortedArrayUsingSelector:@selector(compare:)];
    if ([nums count] == 0) return nil;
    ListNode *node = [[ListNode alloc] initWithVal:[[nums objectAtIndex:0] longValue]];
    ListNode *nextListNode = node;
    
    if ([nums count] > 1) {
        for (NSUInteger i = 1; i < [nums count]; i++) {
            NSInteger num = [[nums objectAtIndex:i] longValue];
            [nextListNode setNext:[[ListNode alloc] initWithVal:num]];
            nextListNode = [nextListNode next];
        }
    }
    
    return node;
}

+ (NSArray *)convertListNodeToArray:(ListNode *)node {
    if (node == nil) return [[NSArray alloc] init];
    NSMutableArray *result = [[NSMutableArray alloc] init];
    ListNode *sequenceNode = node;
    for (;;) {
        NSNumber *val = [[NSNumber alloc] initWithLong:[sequenceNode val]];
        [result insertObject:val atIndex:[result count]];
        
        if ([sequenceNode next] == nil) {
            break;
        }
        sequenceNode = [sequenceNode next];
    }
    
    return result;
}

@end

