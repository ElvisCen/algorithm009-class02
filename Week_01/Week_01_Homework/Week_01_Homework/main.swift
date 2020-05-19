//
//  main.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/18.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation


func test1()  {
    let removeDup = Solution_RemoveDuplicates()
    var nums1 = [1,1,2]
    let res1 = removeDup.removeDuplicates(&nums1)
    print("result1 - \(res1)")
    var nums2 = [0,0,1,1,1,2,2,3,3,4]
    let res2 = removeDup.removeDuplicates(&nums2)
    print("result2 - \(res2)")
}


func testTwoSum()  {
    let solution = SolutionTwoSum()
    let nums = [2, 7, 11, 15]
    let target = 9
    let res = solution.twoSum(nums, target)
    print(res)
}
//test1()
//testTwoSum()

func testCirecularDeque()  {
     let obj = MyCircularDeque(0)
     let ret_1: Bool = obj.insertLast(1)
    print("ret_1 - \(ret_1)")
     let ret_2: Bool = obj.insertLast(2)
    print("ret_2 - \(ret_2)")
     let ret_3: Bool = obj.insertFront(3)
    print("ret_3 - \(ret_3)")
     let ret_4: Bool = obj.insertFront(4)
     print("ret_4 - \(ret_4)")
     let ret_5: Int = obj.getRear()
     print("ret_5 - \(ret_5)")
     let ret_6: Bool = obj.isFull()
     print("ret_6 - \(ret_6)")
     let ret_7: Bool = obj.deleteLast()
     print("ret_7 - \(ret_7)")
     let ret_8: Bool = obj.insertFront(4)
    print("ret_8 - \(ret_8)")
     let ret_9: Int = obj.getFront()
     print("ret_9 - \(ret_9)")
    
     
   
    
    
   
   
   
   
    
   
}
testCirecularDeque()
