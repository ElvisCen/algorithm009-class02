//
//  DecodeWays.swift
//  Week_06_homework
//
//  Created by weclouds on 2020/6/26.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class DecodeWays: NSObject {

    func numDecodings(_ s: String) -> Int {
 
        let sArr = Array(s)
        let len = s.count
        if len < 1 {
            return 0
        }
        if len == 1 {
            return sArr.first == "0" ? 0 : 1
        }
        var dp = Array(repeating: 0, count: len + 1)
        dp[0] = 1
        dp[1] = sArr.first == "0" ? 0 : 1
        for i in 2..<dp.count {
           var last = Int("\(sArr[i - 1])")!
            if last > 0 {
                dp[i] += dp[i - 1]
            }
            last = Int("\(sArr[i - 2])\(sArr[i - 1])")!
            if last >= 10 && last <= 26 {
                dp[i] += dp[i - 2]
            }
        }
        return dp.last!
    }
}

