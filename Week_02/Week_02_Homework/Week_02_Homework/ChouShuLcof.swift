//
//  ChouShuLcof.swift
//  算法训练营_基础算法必练题
//
//  Created by weclouds on 2020/5/31.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//面试题49
class ChouShuLcof: NSObject {
    func nthUglyNumber(_ n: Int) -> Int {
        var a = 0
        var b = 0
        var c = 0
        var dp = Array(repeating: 0, count: n)
        dp[0] = 1
        for i in 0..<n {
            let n2 = dp[a] * 2
            let n3 = dp[b] * 3
            let n5 = dp[c] * 5
            dp[i] = min(min(n2, n3), n5)
            if dp[i] == n2 {a += 1}
            if dp[i] == n3 {b += 1}
            if dp[i] == n5 {c += 1}
        }
        return dp[n - 1]
    }
}
