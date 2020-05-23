//
//  BullsAndCows.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/23.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
/*
 你正在和你的朋友玩 猜数字（Bulls and Cows）游戏：你写下一个数字让你的朋友猜。每次他猜测后，你给他一个提示，告诉他有多少位数字和确切位置都猜对了（称为“Bulls”, 公牛），有多少位数字猜对了但是位置不对（称为“Cows”, 奶牛）。你的朋友将会根据提示继续猜，直到猜出秘密数字。

 请写出一个根据秘密数字和朋友的猜测数返回提示的函数，用 A 表示公牛，用 B 表示奶牛。

 请注意秘密数字和朋友的猜测数都可能含有重复数字。

 示例 1:

 输入: secret = "1807", guess = "7810"

 输出: "1A3B"
   
 解释: 1 公牛和 3 奶牛。公牛是 8，奶牛是 0, 1 和 7。

。*/
class BullsAndCows: NSObject {
    func getHint(_ secret: String, _ guess: String) -> String {
         var bull = 0
         var cow = 0
        var secretArr = secret.map{
            String($0)
        }
        var guessArr = guess.map{
            String($0)
        }
        var list = [String]() //存储非对应的字符
        var dict = [String:Int]() //字符为key，下标为value
        for i in 0..<secretArr.count {
            let temp = secretArr[i]
            if temp == guessArr[i] {
               bull += 1
            }else{
                //不管是否包含，都存在数组中
                list.append(temp)
                if dict.keys.contains(temp) {//处理相同情况
                    dict[temp] = (dict[temp] ?? 0) + 1
                }else{
                    //不包含在内
                    dict[temp] = 1
                }
            }
        }
        for c in list {
            if dict.keys.contains(c) == true {
                cow += 0
                dict[c] = (dict[c] ?? 0) - 1 //恢复
                if dict[c] == 0 {
                    dict.removeValue(forKey: c)
                }
            }
        }
        return "\(bull)A\(cow)B" 
    }
}
