//
//  MyCircularDeque.swift
//  Week_01_Homework
//
//  Created by weclouds on 2020/5/19.
//  Copyright © 2020 weclouds. All rights reserved.
//

import Foundation

class MyCircularDeque {
    private var array : [Int]!
    private var capacity : Int! // 容量 数组长度 + 避免队列为空 和队列位满冲突
    private var front : Int!
    private var rear  : Int!
    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        assert(k != 0, "Deque size is less than 0!")
        capacity = k + 1
        array = Array(repeating: 0, count: capacity)
        front = 0
        rear = 0
    }
    
    /** Adds an item at the front of Deque. Return true if the operation is successful. */
    func insertFront(_ value: Int) -> Bool {
        if isFull() == true {
            return false
        }
        front = (front - 1 + capacity ) % capacity
        array[front] = value
        return true
    }
    
    /** Adds an item at the rear of Deque. Return true if the operation is successful. */
    func insertLast(_ value: Int) -> Bool {
        if isFull() == true {
            return false
        }
        array[rear] = value
        rear = (rear + 1 ) % capacity
        return true
    }
    
    /** Deletes an item from the front of Deque. Return true if the operation is successful. */
    func deleteFront() -> Bool {
        if isEmpty() == true {
            return false
        }
        front = (front + 1) % capacity
        return true
    }
    
    /** Deletes an item from the rear of Deque. Return true if the operation is successful. */
    func deleteLast() -> Bool {
        if isEmpty() == true {
            return false
        }
        rear = (rear - 1 + capacity) % capacity
        return true
        
    }
    
    /** Get the front item from the deque. */
    func getFront() -> Int {
        if isEmpty() {
            return -1
        }
        return array[front]
    }
    
    /** Get the last item from the deque. */
    func getRear() -> Int {
        if isEmpty() {
            return -1
        }
       
        return array[(rear - 1 + capacity) % capacity ]
       
    }
    
    /** Checks whether the circular deque is empty or not. */
    func isEmpty() -> Bool {
       return front == rear
    }
    
    /** Checks whether the circular deque is full or not. */
    func isFull() -> Bool {
        return (rear + 1) % capacity == front
    }
}


/**
 * Your MyCircularDeque object will be instantiated and called as such:
 * let obj = MyCircularDeque(k)
 * let ret_1: Bool = obj.insertFront(value)
 * let ret_2: Bool = obj.insertLast(value)
 * let ret_3: Bool = obj.deleteFront()
 * let ret_4: Bool = obj.deleteLast()
 * let ret_5: Int = obj.getFront()
 * let ret_6: Int = obj.getRear()
 * let ret_7: Bool = obj.isEmpty()
 * let ret_8: Bool = obj.isFull()
 */
