//
//  BinaryTreeInorderTraversal.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/31.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
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
//二叉树的中序遍历
class BinaryTreeInorderTraversal: NSObject {
    //递归
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        if root != nil {
            res += inorderTraversal(root?.left)
            res.append(root!.val)
            res += inorderTraversal(root?.right)
        }
        return res
    }
}
