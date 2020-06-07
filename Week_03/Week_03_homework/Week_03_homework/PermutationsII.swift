//
//  PermutationsII.swift
//  Week03_Homework
//
//  Created by weclouds on 2020/6/7.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class PermutationsII: NSObject {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var track = [Int]()
        var res = [[Int]]()
        var used = Array(repeating: false, count: nums.count)
        backtrack(nums: nums.sorted(), track: &track, used: &used, res: &res)
        return res
    }
    func backtrack( nums:[Int],track : inout [Int],used:inout [Bool],res:inout[[Int]])  {
        if track.count == nums.count {
            res.append(track)
            return
        }
        for (index,num) in nums.enumerated() {
            if used[index] {
                continue
            }
            //剪枝
            if index > 0 && num == nums[index - 1] && !used[index - 1]{
                continue
            }
            used[index] = true
            track.append(num)
            backtrack(nums: nums, track: &track, used: &used, res: &res)
            track.removeLast()
            used[index] = false
        }
    }
}
