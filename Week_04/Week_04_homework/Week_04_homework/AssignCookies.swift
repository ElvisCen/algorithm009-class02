//
//  AssignCookies.swift
//  Week_04_homework
//
//  Created by weclouds on 2020/6/14.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//455 分发饼干
class AssignCookies: NSObject {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let gArr = g.sorted()
        let sArr = s.sorted()
        var count = 0
        var gl = 0 //索引
        var sl = 0 //
        while gl != gArr.count && sl != sArr.count {
            if gArr[gl] <= sArr[sl] {
                count += 1
                gl += 1
            }
            sl += 1
        }
        return count
    }
}
