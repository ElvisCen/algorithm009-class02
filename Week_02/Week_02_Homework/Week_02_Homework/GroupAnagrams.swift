//
//  GroupAnagrams.swift
//  算法训练营_基础算法必练题
//
//  Created by weclouds on 2020/5/29.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//49. 字母异位词分组
class GroupAnagrams: NSObject {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [[String]]()
        if strs.count == 0 {
           return res
        }
        var dict = [String:[String]]()
        for s in strs {
            var sArr = [Character](s)
            sArr.sort()
            let key = String(sArr)
            if !dict.keys.contains(key) {//不包含k，就添加
                dict[key] = [String]()
            }
            dict[key]?.append(s)
        }
        res.append(contentsOf: dict.values)
        return res
    }
}
