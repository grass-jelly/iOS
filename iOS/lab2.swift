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
    
    // create default fan
    init() {
        self.speed = SLOW
        self.on = false
        self.radius = 5
        self.color = "blue"
    }
    
    // getters and setters
    func getSpeed() -> Int {
        return self.speed
    }
    
    func setSpeed(value: Int) {
        self.speed = value
    }
    
    func getRadius() -> Int {
        return self.radius
    }
    
    func setRadius(value: Int) {
        self.radius = value
    }
    
    func getColor() -> String {
        return self.color
    }
    
    func setColor(value: String) {
        self.color = value
    }
    
    func getOn() -> Bool {
        return self.on
    }
    
    func setOn(value: Bool) {
        self.on = value
    }
   
    // if fan is on: print speed, color, radius
    // if fan is off: print color, radius, fan is off
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

// Exercise 5
class Person {
    var name: String
    var address: String
    var phone: String
    var email: String
    
    init(name: String, address: String, phone: String, email: String) {
        self.address = address
        self.name = name
        self.phone = phone
        self.email = email
    }
    
    func toString() -> String {
        return "className: Person, personName: \(name)"
    }
    
}

class Student: Person {
    let status: String
    init(name: String, address: String, phone: String, email: String, status: String) {
        self.status = status
        super.init(name: name, address: address, phone: phone, email: email)
    }
    override func toString() -> String {
        return "className: Student, personName: \(name)"
    }
}

class Employee: Person {
    var office: String
    var salary: Double
    let dateHired: MyDate
    init(name: String, address: String, phone: String, email: String, office: String, salary: Double, dateHired: MyDate) {
        self.dateHired = dateHired
        self.office = office
        self.salary = salary
        super.init(name: name, address: address, phone: phone, email: email)
    }
    override func toString() -> String {
        return "className: Employee, personName: \(name)"
    }
}

class MyDate {
    var year: Int
    var month: Int
    var day: Int
    
    init(year: Int, month: Int, day: Int) {
        self.year = year
        self.month = month
        self.day = day
    }
}

class Faculty: Employee {
    var officeHours: String
    var rank: String
    
    init(name: String, address: String, phone: String, email: String, office: String, salary: Double, dateHired: MyDate, officeHours: String, rank: String) {
        self.officeHours = officeHours
        self.rank = rank
        super.init(name: name, address: address, phone: phone, email: email, office: office, salary: salary, dateHired: dateHired)
    }
    
    override func toString() -> String {
        return "className: Faculty, personName: \(name)"
    }
}

class Staff: Employee {
    var title: String
    init(name: String, address: String, phone: String, email: String, office: String, salary: Double, dateHired: MyDate, title: String) {
        self.title = title
        super.init(name: name, address: address, phone: phone, email: email, office: office, salary: salary, dateHired: dateHired)
    }
    
    override func toString() -> String {
        return "className: Staff, personName: \(name)"
    }
}

// Exercise 6
enum RuntimeError: Error {
    case invalidInputString
}

// Exercise 7
func parseInt(s: String) throws -> Int {
    guard let result = Int(s) else {
        throw RuntimeError.invalidInputString
    }
    return result
}

// Exercise 8
func addStrings(s1: String, s2: String) throws -> Int {
    let i1 = try parseInt(s: s1)
    let i2 = try parseInt(s: s2)
    
    return i1+i2
}

// Exercise 9
func splitAndApply(strs: [String], closure: (String, String) throws -> Int) throws -> Int {
    var sum = 0
    for str in strs {
        let stringArray = str.split(separator: " ", maxSplits: 1).map(String.init)
        if stringArray.count==2 {
            sum += try closure(stringArray[0], stringArray[1])
        }
    }
    return sum
}


