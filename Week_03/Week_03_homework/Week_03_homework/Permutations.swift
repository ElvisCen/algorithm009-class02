//
//  Permutations.swift
//  Week03_Homework
//
//  Created by weclouds on 2020/6/7.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class Permutations: NSObject {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res =  [[Int]]()
        var visited = Array(repeating: 0, count: nums.count)
        var temp = [Int]()
        backtrack(&res, nums: nums, &temp, &visited)
        return res
    }
    func backtrack(_ res :inout [[Int]],nums: [Int], _ temp :inout [Int],_ visited:inout [Int])  {
        if temp.count == nums.count {
            res.append(temp)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == 1 {
                continue
            }
            visited[i] = 1
            temp.append(nums[i])
            backtrack(&res, nums: nums, &temp, &visited)
            visited[i] = 0
            temp.remove(at: temp.count - 1)
        }
    }
}
