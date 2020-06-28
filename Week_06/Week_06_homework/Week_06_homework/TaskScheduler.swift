//
//  TaskScheduler.swift
//  Week_06_homework
//
//  Created by weclouds on 2020/6/27.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//621 任务调度器
class TaskScheduler: NSObject {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        if tasks.count <= 1 || n < 1 {
            return tasks.count
        }
        var counts = Array(repeating: 0, count: 26)
        for i in 0..<tasks.count {
            let task = Int(tasks[i].asciiValue!)
            let a : Int = Int(Character("A").asciiValue!)
            counts[task - a] += 1
        }
        counts.sort()
        let maxCount = counts[25]
        var retCount = (maxCount - 1) * (n + 1) + 1
        var i = 24
        while i >= 0 && counts[i] == maxCount {
            retCount += 1
            i -= 1
        }
        return max(retCount, tasks.count)
    }
}
