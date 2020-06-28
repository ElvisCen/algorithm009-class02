//
//  MinimumPathSum.swift
//  Week_06_homework
//
//  Created by weclouds on 2020/6/26.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//64. 最小路径和
class MinimumPathSum: NSObject {
    func minPathSum(_ grid:[[Int]]) -> Int {
        let width = grid.count
        let height = grid[0].count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: height), count: width)
        for i in 0..<width {
            for j in 0..<height {
                let iMark = i > 0
                let jMark = j > 0
                if iMark && iMark{
                    dp[i][j] = min(dp[i - 1][j], dp[i][j - 1] + grid[i][j])
                }else if iMark{
                    dp[i][j] = dp[i - 1][j] + grid[i][j]
                }else if jMark{
                    dp[i][j] = dp[i][j - 1] + grid[i][j]
                }else{
                    dp[i][j] = grid[i][j]
                }
            }
        }
        return (dp.last?.last)!
    }
}
