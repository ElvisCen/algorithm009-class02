//
//  Trap.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/20.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class SolutionTarp {
    //双指针
    
    func trap(_ height: [Int]) -> Int {
        var left = 0 //左指针从头起
        var left_max = 0 //左边最大值
        var right = height.count - 1// 右边从尾部起
        var right_max = 0
        var sum = 0
        while left < right {
            if height[left] < height[right] {
                if height[left] >= left_max {
                    left_max = max(height[left], left_max)
                } else {
                    sum += (left_max - height[left])
                }
                left += 1
            } else {
                if height[right] >= right_max {
                    right_max = max(height[right], right_max)
                } else {
                    sum += (right_max - height[right])
                }
                right -= 1
            }
        }
        return sum
    }
}
