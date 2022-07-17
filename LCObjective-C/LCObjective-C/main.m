//
//  main.m
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 23/10/21.
//

#import <Foundation/Foundation.h>
#import "Problems/MergeTwoSortedLists/ListNode.h"
#import "Problems/MergeTwoSortedLists/MergeTwoSortedLists.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ListNode *node1 = [[ListNode alloc] initWithVal:4];
        node1.next = [[ListNode alloc] initWithVal:2];
        node1.next.next = [[ListNode alloc] initWithVal:1];
        
        ListNode *node2 = [[ListNode alloc] initWithVal:4];
        node2.next = [[ListNode alloc] initWithVal:1];
        node2.next.next = [[ListNode alloc] initWithVal:3];
        
        ListNode *sortedNode = [MergeTwoSortedLists mergeTwoLists:node1 andList:node2];
        
        NSLog(@"%@", sortedNode);
    }
    return 0;
}
