//
//  main.swift
//  Run programs in the labs
//
//  Created by Linh Do on 7/4/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import Foundation
let cal = MyCalculator()
print("Enter n and p:", terminator: "")
var input = readLine()!
var intArray = input.split(separator: " ", maxSplits: 1).map(String.init)
var n = Int(intArray[0])!
var p = Int(intArray[1])!
do {
    try print("\(n) ^ \(p) = \(cal.power(n: n, p: p))")
} catch MyCalculatorError.negative {
    print("Error: n and p should not be negative")
} catch MyCalculatorError.zero {
    print("Error: n and p should not be both zero")
} catch MyCalculatorError.outOfRange {
    print("Error: n and p should be in the range of (-10, 10)")
}





//func lab2() throws {
//    print("--------------------------ex1----------------------------")
//    print(squareClosure(1))
//
//    print("--------------------------ex2----------------------------")
//    print(takeClosure(i: 5, closure: squareClosure))
//
//    print("--------------------------ex3----------------------------")
//    returnFunc()()
//
//    print("--------------------------ex4----------------------------")
//    let fan1 = Fan()
//    fan1.setSpeed(value: 3)
//    fan1.setRadius(value: 10)
//    fan1.setColor(value: "Yellow")
//    fan1.setOn(value: true)
//
//    let fan2 = Fan()
//    fan2.setSpeed(value: 2)
//    fan2.setRadius(value: 5)
//    fan2.setColor(value: "Blue")
//    fan2.setOn(value: false)
//
//    print(fan1.toString())
//    print(fan2.toString())
//
//    print("--------------------------ex5----------------------------")
//    let person = Person(name: "linh", address: "46 Nguyen Khuyen", phone: "0912900310", email: "s3689251@rmit.edu.vn")
//    print(person.toString())
//    let student = Student(name: "linh", address: "46 Nguyen Khuyen", phone: "0912900310", email: "s3689251@rmit.edu.vn", status: "Junior")
//    print(student.toString())
//    let date = MyDate(year: 2018, month: 07, day: 17)
//    let staff = Staff(name: "linh", address: "46 Nguyen Khuyen", phone: "0912900310", email: "s3689251@rmit.edu.vn", office: "Truong Son", salary: 6000, dateHired: date, title: "Backend engineer")
//    print(staff.toString())
//
//    print("--------------------------ex7----------------------------")
//    try print(parseInt(s: "8"))
//
//    print("--------------------------ex8----------------------------")
//    try print(addStrings(s1: "8", s2: "2"))
//
//    print("--------------------------ex9----------------------------")
//    try print(splitAndApply(strs: ["Orange", "1 1", "4711", "2 8"], closure: addStrings))
//}
//
//func lab1() {
//    displayTable()
//
//    displayNumbers()
//
//    print(sum(n: 50))
//
//    print(sum2(n: 625))
//
//    print("Hello, World!")
//
//    for i in 0..<10 {
//        print(i)
//    }
//
//    var str1 = "ello"
//    print("str1.isEmpty = \(str1.count)")
//
//    for char in "hello" {
//        print(char, separator: "     ", terminator: "")
//    }
//
//    for n in 1...5 {
//        print(n, separator: " ", terminator: "")
//    }
//
//    print(1, 2, 3, separator: " ", terminator: "")
//    print()
//    var strs = [String]()
//    strs.append("Linh")
//    strs.append("Do")
//    strs += ["Carol"]
//    for elem in strs {
//        print(elem)
//    }
//    for (index, elem) in strs.enumerated() {
//        print("Value at index \(index) = \(elem)")
//    }
//
//    var ints1:[Int] = [1, 2, 3]
//    var ints2 = [Int](repeating: 2, count: 3)
//    var ints3 = ints1 + ints2
//    for i in ints3 {
//        print(i)
//    }
//    print("There are \(ints3.count) elements in array 3")
//    print("ints3.isEmpty = \(ints3.isEmpty)")
//
//    func mult(i1:Int, i2:Int) -> Int {
//        return i1*i2
//    }
//    print("2*10= \(mult(i1: 2, i2: 10))")
//
//}
//
//try lab2()








