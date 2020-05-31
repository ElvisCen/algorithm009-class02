//
//  TwoSum.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/27.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//1两数之和
class TwoSum: NSObject {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var res = [Int]()
    var dict = [Int:Int]()
    for i in nums{
        let a = target - nums[i]
        if dict.keys.contains(a) {
            res = [dict[a]!,i]
            return res 
        }
        dict[nums[i]] = i
    }
    return res
  }
}
