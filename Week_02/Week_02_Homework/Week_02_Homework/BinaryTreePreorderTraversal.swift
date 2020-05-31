//
//  BinaryTreePreorderTraversal.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/31.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class BinaryTreePreorderTraversal: NSObject {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        if root != nil {
          res.append(root!.val)
            res += preorderTraversal(root?.left)
            res += preorderTraversal(root?.right)
        }
        
        return res
    }
}
