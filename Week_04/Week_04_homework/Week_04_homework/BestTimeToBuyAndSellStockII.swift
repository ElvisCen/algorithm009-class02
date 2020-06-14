//
//  BestTimeToBuyAndSellStockII.swift
//  Week_04_homework
//
//  Created by weclouds on 2020/6/14.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class BestTimeToBuyAndSellStockII: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for i in 1..<prices.count {
            var tmp = prices[i] - prices[i - 1]
            if tmp > 0 {
                profit += tmp
            }
        }
        return profit
    }
}
