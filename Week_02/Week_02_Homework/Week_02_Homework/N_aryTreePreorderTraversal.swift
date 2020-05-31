//
//  N_aryTreePreorderTraversal.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/28.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//589. N叉树的前序遍历
// Definition for a Node.
 public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
 }

class N_aryTreePreorderTraversal: NSObject {
    func preorder(_ root: Node?) -> [Int] {
        
        var res = [Int]()
        if root == nil {
            return res
        }
        var stack = [Node]()
        stack.append(root!)
        while !stack.isEmpty {
            let cur = stack.removeLast()
            res.append(cur.val)
            let nodelist = cur.children
            for node in nodelist.reversed() {
                stack.append(node)
            }
        }
        return res
    }
}
