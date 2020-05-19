//
//  MoveZeroes.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/19.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class SolutionMoveZeroes  {
    //双指针法 //两遍遍历
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        //第一遍遍历 把非0的都移到前边
        for i in 0..<nums.count {
            if nums[i] != 0 {
               nums[j] = nums[i]
                j += 1
            }
        }
        for i in j..<nums.count {
            if nums[i] != 0 {
                nums[i] = 0
            }
        }
        
    }
    
    //一次遍历 ，把右边非0移动到左边
 func moveZeroes2(_ nums: inout [Int]) {
    if nums.count == 0{
        return
    }
    var j = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            if i > j {
                nums[j] = nums[i]
                nums[i] = 0
            }
            j += 1
        }
    }
 }
    
}
