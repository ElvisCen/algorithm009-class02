//
//  WordLadder.swift
//  Week_04_homework
//
//  Created by weclouds on 2020/6/14.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Cocoa
//127 单词接龙
class WordLadder: NSObject {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var aWordList = wordList
        if !wordList.contains(endWord) {
            return 0
        }
        aWordList.append(beginWord)
        //从两端BFS遍历要用的队列·
        var queue1 = [String]()
        var queue2 = [String]()
        //两端已经遍历过的节点
        var visted1 = [String]()
        var visted2 = [String]()
        queue1.append(beginWord)
        queue2.append(endWord)
        visted1.append(beginWord)
        visted2.append(endWord)
        var count = 0
        let allWordSet = [String]()
        while !queue1.isEmpty && !queue2.isEmpty {
            count += 1
            if queue1.count > queue2.count {
                let tmp = queue1
                queue1 = queue2
                queue2 = tmp
                let t = visted1
                visted1 = visted2
                visted2 = t
            }
            var size1 = queue1.count
            
            while size1 > 0 {
                size1 -= 1
                let s = queue1.removeFirst()
                var chars = [Character](s)
                for j in 0..<s.count {
                    var c0 = chars[0]
                    for c in 0..<26 {
                        chars[j] = Character(UnicodeScalar(c + 97)!)
                        let newStr = String(chars)
                        if visted1.contains(newStr) {
                            continue
                        }
                        if visted2.contains(newStr) {
                            return count + 1
                        }
                        if allWordSet.contains(newStr) {
                            queue1.append(newStr)
                            visted1.append(newStr)
                        }
                    }
                    chars[j] = c0
                }

            }
        }
        return 0
    }
}
