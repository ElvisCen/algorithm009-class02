//
//  Combinations.swift
//  Week03_Homework
//
//  Created by weclouds on 2020/6/7.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//77，组合
class Combinations: NSObject {
    var res = [[Int]]()
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        if n <= 0 || k <= 0 || n < k  {
           return  res
        }
        var p = [Int]()
        //从1 开始
        dfs(n, k, 1, &p)
        return res
    }
    func dfs(_ n: Int,_ k : Int,_ index:Int,_  p: inout [Int])  {
        
        if p.count == k {
            res.append(p)
            return
        }
        for i in index...(n - (k - p.count) + 1) {
            p.append(i)
            dfs(n, k, i + 1, &p)
            p.removeLast()
        }
    }
}
