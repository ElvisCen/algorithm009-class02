//
//  PalindromicSubstrings.swift
//  Week_06_homework
//
//  Created by weclouds on 2020/6/27.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class PalindromicSubstrings: NSObject {
    func countSubstrings(_ s: String) -> Int {
        var res = 0
        let sArr = Array(s)
        var dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        for j in 0..<s.count {
            for i in (0...j).reversed() {
                if sArr[i] == sArr[j] && ((j - i < 2) || dp[i + 1][j - 1]) {
                   dp[i][j] = true
                    res += 1
                }
            }
        }
        return res
    }
}
