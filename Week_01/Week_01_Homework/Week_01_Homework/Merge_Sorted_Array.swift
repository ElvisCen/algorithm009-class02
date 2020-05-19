//
//  Merge_Sorted_Array.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/18.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

/*
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。

  

 说明:

 初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。

*/
class Solution88 {
    //直接合并
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1
        var p2 = n - 1
        var p = m + n - 1 //定义指针
        while p1 >= 0 && p2 >= 0 {
            if nums1[p1] <= nums2[p2] {
                nums1[p] = nums2[p2]
                p2 -= 1
            }else{
                nums1[p] = nums1[p1]
                p1 -= 1
            }
           p -= 1
        }
        
        //p1 , p2 最多有一个不为0
        while p2 >= 0 {
            nums1[p] = nums2[p2]
            p2 -= 1
            p -= 1
        }
    }

}

