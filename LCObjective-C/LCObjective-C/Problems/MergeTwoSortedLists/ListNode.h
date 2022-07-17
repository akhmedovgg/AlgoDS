//
//  ListNode.h
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 18/07/22.
//

#ifndef ListNode_h
#define ListNode_h

//class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

@interface ListNode : NSObject

@property NSInteger val;

@property (nullable) ListNode *next;

- (instancetype _Nullable)initWithVal:(NSInteger)val;

- (instancetype _Nullable)initWithVal:(NSInteger)val andNextListNode:(ListNode *_Nullable)nextListNode;

@end

#endif /* ListNode_h */



