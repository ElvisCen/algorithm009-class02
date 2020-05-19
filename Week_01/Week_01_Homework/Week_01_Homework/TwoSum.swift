//
//  TwoSum.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/19.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class SolutionTwoSum {
    //暴力法。时间为O(n^2) 时间过长
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        for i in 0..<nums.count {
            for j in stride(from: i + 1, to: nums.count, by: 1) {
                if nums[i] + nums[j] == target {
                    res = [i,j]
                    return res
                }
            }
        }
        return res
    }
    //一遍哈希表 时间复杂度 O(n) 空间复杂度O(n)
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int:Int]()
        for i in 0..<nums.count {
            let completement = target - nums[i]
            if dict.keys.contains(completement) == true { //如果包含了completement 则证明存在
                let j = dict[completement]
                res = [j!,i]
            }
            dict[nums[i]] = i
        }
        return res
    }
}
