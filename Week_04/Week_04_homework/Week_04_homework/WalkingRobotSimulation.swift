//
//  WalkingRobotSimulation.swift
//  Week_04_homework
//
//  Created by weclouds on 2020/6/14.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa

class WalkingRobotSimulation: NSObject {
    func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        let obstaSet = Set(obstacles)
        var maxDist = 0
        var pos = [0,0]
        var posI = 1
        var dir = 1
        for command in commands {
            if command == -2 {
                if posI == 1 {
                    dir *= -1
                }
                posI ^= 1
            }else if command == -1{
                if posI == 0 {
                    dir *= -1
                }
                posI ^= 1
            }else {
                for _ in 1...command{
                    pos[posI] += dir
                    if obstaSet.contains(pos) {
                        pos[posI] -= dir
                        break
                    }
                }
                maxDist = max(maxDist,pos[0] * pos[0] + pos[1] * pos[1])
            }
        }
        return maxDist
    }
}
