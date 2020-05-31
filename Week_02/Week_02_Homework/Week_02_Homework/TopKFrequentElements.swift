//
//  TopKFrequentElements.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/31.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class TopKFrequentElements: NSObject {
        func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
            var res = [Int]()
            //使用字典，统计每个出现的次数 ，元素出现的次数为值
            var dict = [Int:Int]()
            for n in nums {
                if dict.keys.contains(n) {
                    dict[n] = dict[n]! + 1
                }else{
                    dict[n] = 1
                }
            }
            //桶排序 将频率作为数组下标，对出现频率不同的数字集合，存入对应的数组下标
            var list : [[Int]]? = Array(repeating: [Int](), count: nums.count + 1)
            for key in dict.keys {
                //获取出现的次数为下标
                let i = dict[key]!
                if list?[i] == nil {
                    list?[i] = [Int]()
                }
                list?[i].append(key)
            }
            //倒序遍历数组，取出顺序从大到小的排序
            for i in (0..<list!.count).reversed() {
                if res.count  < k {
                    if list?[i] == nil {
                       continue
                    }
                    res += list![i]
                }
            }
            return res
           
        }
    
}
