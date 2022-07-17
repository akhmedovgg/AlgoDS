//
//  ListNode.h
//  LCObjective-C
//
//  Created by Sherzod Akhmedov on 18/07/22.
//

#ifndef ListNode_h
#define ListNode_h

@interface ListNode : NSObject

@property NSInteger val;

@property (nullable) ListNode *next;

- (instancetype _Nullable)initWithVal:(NSInteger)val;

- (instancetype _Nullable)initWithVal:(NSInteger)val andNextListNode:(ListNode *_Nullable)nextListNode;

@end

#endif /* ListNode_h */



