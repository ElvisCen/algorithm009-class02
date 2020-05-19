//
//  PlusOne.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/19.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class SolutionPlusOne {
   /*
     如果最后一位不为9 直接 + 1 就返回
     如果最后一位为9  变为 + 1变为 0 ，向前一位 ， 前一位不为9 直接返回
     如果全为9 则都变为 0 ，再补一位 1    999-->1000  99->100
     */
    func plusOne(_ digits: [Int]) -> [Int] {
        var arr = digits
        for i in (0..<arr.count).reversed() {
            if arr[i] == 9 {
                arr[i] = 0
            }else{
                arr[i] += 1
                return arr
            }
        }
        arr.insert(1, at: 0)   
        return arr
    }
}
