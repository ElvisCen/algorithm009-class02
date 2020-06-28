//
//  MacimalSquare.swift
//  Week_06_homework
//
//  Created by weclouds on 2020/6/27.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class MacimalSquare: NSObject {
     func maximalSquare(_ matrix: [[Character]]) -> Int {
        if matrix.isEmpty {
            return 0
        }
        var m = Array(repeating: Array(repeating: 0, count: matrix[0].count + 1) , count: matrix.count + 1)
        var ans = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == "0"{
                    continue
                }
                m[i + 1][j + 1] = min(min(m[i][j + 1], m[i + 1][j]), m[i][j]) + 1
                ans = max(ans, m[i + 1][j + 1])
            }
        }
        return ans * ans
     }
}
