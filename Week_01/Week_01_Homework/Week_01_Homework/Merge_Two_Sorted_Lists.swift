//
//   Merge_Two_Sorted_Lists.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/18.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation
/**
* Definition for singly-linked list.
 */
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }
//21. 合并两个有序链表
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var a = l1
        var b = l2
        let prehead = ListNode(-1)
        var prev : ListNode? = prehead
        while a != nil && b != nil {
            if a!.val <= b!.val {
                prev?.next = a
                a = a?.next
            }else{
                prev?.next = b
                b = b?.next
            }
            prev = prev?.next
        }
        prev?.next = a == nil ? b : a
        return prehead.next
    }
}
