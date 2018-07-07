//
//  lab2.swift
//  com.rmit
//
//  Created by Linh, Do Thi Khanh on 7/4/18.
//  Copyright © 2018 Linh, Do Thi Khanh. All rights reserved.
//

import Foundation

// Exercise 1
var squareClosure: (Int) -> Int = {$0*$0}

// Exercise 2
func takeClosure(i: Int, closure: (Int)->Int) -> Int {
    return closure(i)
}

// Exercise 3
func returnFunc() -> ()->Void {
    let stuff = "This is stuff"
    //let closure: () -> Void = {print(stuff)}
    return {print(stuff)}
}

// Exercise 4
class Fan {
    let SLOW = 1
    let MEDIUM = 2
    let FAST = 3
    
    var speed: Int
    var on: Bool
    var radius: Int
    var color: String
    
    init() {
        self.speed = SLOW
        self.on = false
        self.radius = 5
        self.color = "blue"
    }
    
    func getSpeed() -> Int {
        return self.speed
    }
    
    func setSpeed(value: Int) {
        self.speed = value
    }
    
    func getOn() -> Int {
        return self.speed
    }
    
    func toString() -> String {
        var s: String
        if (self.on) {
            s = "fan speed = \(self.speed), color = \(self.color), radius = \(self.radius)"
        } else {
            s = "color = \(self.color), radius = \(self.radius), fan is off"
        }
        return s
    }
}


