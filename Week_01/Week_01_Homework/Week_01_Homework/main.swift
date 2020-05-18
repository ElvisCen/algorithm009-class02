//
//  main.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/18.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

let removeDup = Solution_RemoveDuplicates()
var nums1 = [1,1,2]
let res1 = removeDup.removeDuplicates(&nums1)
print("result1 - \(res1)")
var nums2 = [0,0,1,1,1,2,2,3,3,4]
let res2 = removeDup.removeDuplicates(&nums2)
print("result2 - \(res2)")
