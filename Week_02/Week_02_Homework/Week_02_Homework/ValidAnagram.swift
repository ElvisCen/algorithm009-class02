//
//  ValidAnagram.swift
//  Week_02_Homework
//
//  Created by weclouds on 2020/5/26.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//242. 有效的字母异位词
class ValidAnagram: NSObject {
    //排序法
     func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var sArr = s.map{String($0)}
        var tArr = t.map{String($0)}
        if sArr.count != tArr.count {
            return false
        }
        sArr.sort()
        tArr.sort()
        if sArr != tArr {
            return false
        }
        return true
     }
    
   // 哈希法
    func isAnagram2(_ s: String, _ t: String) -> Bool {
         let sArr = [Character](s)
         let tArr = [Character](t)
        if sArr.count != tArr.count{return false }
        let a : Character = "a"
        var table = Array(repeating: 0, count: 26)
        for i in 0..<sArr.count {
            let sIndex : Int = Int(sArr[i].asciiValue! - a.asciiValue!)
            var tIndex : Int = Int(tArr[i].asciiValue! - a.asciiValue!)
            table[sIndex] += 1 //在字符对应位置赋值为1
            table[tIndex] -= 1 //将对应数组为-1
        }
        for i in table {
            if i != 0 {
                return false 
            }
        }
        return true
    }
    
    func isAnagram3(_ s: String, _ t: String) -> Bool {
        let sArr = [Character](s)
        let tArr = [Character](t)
        if sArr.count != tArr.count  {
            return false
        }
        let a : Character = "a"
        var table = Array(repeating: 0, count: 26)
        for i in 0..<sArr.count {
            let sIndex : Int = Int(sArr[i].asciiValue! - a.asciiValue!)
            let tIndex : Int = Int(tArr[i].asciiValue! - a.asciiValue!)
            table[sIndex] += 1
            table[tIndex] -= 1
        }
        for i in table {
            if i != 0 {
                return false
            }
        }
        return true
    }
}
