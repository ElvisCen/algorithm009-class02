//
//  WordPattern.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/23.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

/*
 

 给定一种规律 pattern 和一个字符串 str ，判断 str 是否遵循相同的规律。

 这里的 遵循 指完全匹配，例如， pattern 里的每个字母和字符串 str 中的每个非空单词之间存在着双向连接的对应规律。


 */
class WordPattern: NSObject {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let patternArr = pattern.map{String($0)}
        let strArr = str.components(separatedBy: " ")
        if patternArr.count != strArr.count {
            return false 
        }
        var dict = [String:String]()//哈希表
        for i in 0..<patternArr.count {
            let p = patternArr[i]
            let s = strArr[i]
            if dict.keys.contains(p) == true {//已经构建映射成功
                if dict[p] != s {
                    return false //判断是否匹配
                }
            }else{//未构建映射成功
                if dict.values.contains(s) == true {
                    return false//如果已经存在s 但是不存在p
                }
                dict[p] = s //构建映射
            }
        }
        return true
    }
}
//https://leetcode-cn.com/problems/valid-anagram/description/
//https://leetcode-cn.com/problems/binary-tree-inorder-traversal/
//https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/
