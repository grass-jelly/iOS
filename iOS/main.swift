//
//  main.swift
//  Run programs in the labs
//
//  Created by Linh Do on 7/4/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import Foundation
print(squareClosure(1))
displayTable()

displayNumbers()

print(sum(n: 50))

print(sum2(n: 625))

print("Hello, World!")

for i in 0..<10 {
    print(i)
}

var str1 = "ello"
print("str1.isEmpty = \(str1.count)")

for char in "hello" {
    print(char, separator: "     ", terminator: "")
}

for n in 1...5 {
    print(n, separator: " ", terminator: "")
}

print(1, 2, 3, separator: " ", terminator: "")
print()
var strs = [String]()
strs.append("Linh")
strs.append("Do")
strs += ["Carol"]
for elem in strs {
    print(elem)
}
for (index, elem) in strs.enumerated() {
    print("Value at index \(index) = \(elem)")
}

var ints1:[Int] = [1, 2, 3]
var ints2 = [Int](repeating: 2, count: 3)
var ints3 = ints1 + ints2
for i in ints3 {
    print(i)
}
print("There are \(ints3.count) elements in array 3")
print("ints3.isEmpty = \(ints3.isEmpty)")

func mult(i1:Int, i2:Int) -> Int {
    return i1*i2
}
print("2*10= \(mult(i1: 2, i2: 10))")









