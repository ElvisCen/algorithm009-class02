//
//  LemonadeChange.swift
//  Week_04_homework
//
//  Created by weclouds on 2020/6/14.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//860 柠檬水找零
class LemonadeChange: NSObject {
    func lemonadeChange(_ bills:[Int]) -> Bool {
        var five = 0
        var ten = 0
        for bill in bills {
            if bill == 5 {
                five += 1
            }else if bill == 10{
                if five == 0 {
                    return false
                }
                ten += 1
                five -= 1
            }else{
                if five > 0 && ten > 0 {
                    five -= 1
                    ten -= 1
                }else if five >= 3{
                    five -= 3
                }else{
                    return false
                }
            }
        }
        return true
    }
}
