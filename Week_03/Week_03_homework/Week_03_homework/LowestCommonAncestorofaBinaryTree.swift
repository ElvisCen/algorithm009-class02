//
//  LowestCommonAncestorofaBinaryTree.swift
//  Week03_Homework
//
//  Created by weclouds on 2020/6/7.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
// Definition for a binary tree node.
 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }
//n236. 二叉树的最近公共祖先 递归法
class LowestCommonAncestorofaBinaryTree: NSObject {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || root === p || root === q {
            return root
        }

        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)
        if left == nil{
          return right
        }
        if right == nil {
            return left
        }
        return root
    }
}
