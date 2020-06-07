//
//  ConstructBinaryTreefromPreorderandInorderTraversal.swift
//  Week03_Homework
//
//  Created by weclouds on 2020/6/7.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class ConstructBinaryTreefromPreorderandInorderTraversal: NSObject {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 || inorder.count == 0 || preorder.count != inorder.count {
            return nil
        }
        return build(preorder: preorder, preStart: 0, preEnd: preorder.count - 1, inorder: inorder, inStart: 0, inEnd: inorder.count - 1)
    }
    func build(preorder:[Int]?,preStart:Int?,preEnd:Int?,inorder:[Int]?,inStart:Int?,inEnd:Int?) -> TreeNode? {
        //终止条件
        guard let pOrder = preorder else { return nil }
        guard let pStart = preStart else { return nil }
        guard let pEnd = preEnd else { return nil }
        guard let inOrder = inorder else { return nil }
        guard let inStart = inStart else { return nil }
        guard let inEnd = inEnd else { return nil }
        if pStart > pEnd || inStart > inEnd {
            return nil
        }
        //根节点
        let treeNode = TreeNode(pOrder[pStart])
        var index = 0 //找到根节点所在的中序遍历
        while inOrder[ inStart + index] != pOrder[pStart] {
            index += 1
        }
        //左子树
        treeNode.left = build(preorder: pOrder, preStart: pStart + 1, preEnd: pEnd + index, inorder: inOrder, inStart: inStart, inEnd: inStart + index - 1)
        //右子树
        treeNode.right = build(preorder: pOrder, preStart: pStart + index + 1, preEnd: pEnd, inorder: inOrder, inStart: inStart + index + 1, inEnd: inEnd)
        
        return treeNode
    }
}
