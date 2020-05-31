//
//  N_aryTreeLevelOrderTraversal.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/31.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class N_aryTreeLevelOrderTraversal: NSObject {
    private var result = [[Int]]()
    func levelOrder(_ root: Node?) -> [[Int]] {
        if root != nil {
            traverseNode(root!, 0)
        }
        return result
    }
    
    private func traverseNode(_ node:Node,_ level :Int){
        if result.count <= level { //添加层级
            result.append([Int]())
        }
        //获取层级 ，添加
        result[level].append(node.val)
        //添加子层级
        for chileNode in node.children {
            traverseNode(chileNode, level + 1) //子层级 + 1
        }
    }
}
