//
//  Rotate.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/18.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class Solution_Rotate {
    func rotate(_ nums: inout [Int], _ k: Int) {
       //使用队列FIFO 最后一个出队，然后入队
        //平均时间复杂度为 O(n) 空间复杂度为O(1)
        var n = k
        while n > 0 {
           let end = nums.removeLast()
            nums.insert(end , at: 0)
            n -= 1
        }
        
    }
    
    
    //三次反转法
    //[1,2,3,4,5,6,7
    //第一次旋转 4，3，2，1，5，6，7
    //第二次旋转 4，3，2，1，7，6，5
    //第三次旋转 7，6，5，1，2，3，4
    
    func rotate2(_ nums: inout [Int],_ k :Int)  {
        let n = nums.count
        var i = k
        i %= n
        rotate(&nums, 0, n - 1)
        rotate(&nums, 0, i - 1)
        rotate(&nums, i, n - 1)
    }
    
    func rotate(_ nums : inout [Int],_ start : Int ,_ end : Int)  {
        var i = start
        var j = end
        while i < j  {
            let temp = nums[i]
            nums[i] = nums[j]
            nums[j] = temp
            i += 1
            j -= 1
        }
    }
    //暴力解法 时间复杂度为O(n^2)
    // 1,2,3,4,5,6     3
    //一个一个反转
    func rotate3(_ nums: inout [Int],_ k :Int)  {
        var temp : Int
        var previous : Int
        for _ in 0..<k {
            previous = nums[nums.count - 1]
            for j in 0..<nums.count {
               temp = nums[j]
              nums[j] = previous
              previous = temp
            }
        }
    }
}
