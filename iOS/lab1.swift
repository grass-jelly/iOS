//
//  main.swift
//  com.rmit
//
//  Created by Linh, Do Thi Khanh on 6/27/18.
//  Copyright © 2018 Linh, Do Thi Khanh. All rights reserved.
//

import Foundation

//print("Whats your name ", terminator: "")
//var name = readLine()!
//print("Hello \(name)")

//var price: Double = 11.5
//var quantity: Int = 7
//var result = price * Double(quantity)
//var anotherPrice: Int
//anotherPrice = Int(price)
//print(result)
//print(anotherPrice)

func milesToKm(i1: Int) {
    print((String(format:"%-5d     %-10.3f", i1, Double(i1)*1.609)), terminator: "")
}

func kmToMiles(i1: Int) {
    print((String(format:"%-10d     %-10.3f", i1, Double(i1)/1.609)))
}

func isDivisible(i1: Int) -> Bool{
    return (i1%5 == 0 || i1%6 == 0) && !(i1%5 == 0 && i1%6 == 0)
}

func displayTable() {
    var k = 19
    var j = 0
    
    print((String(format:"%-5S     %-10S | %-10S     %-10S", "Miles", "Kilometers", "Kilometers", "Miles")))
    
    for i in 1...10 {
        j = i + k
        milesToKm(i1: i)
        print(" | ", terminator: "")
        kmToMiles(i1: j)
        k = k + 4
    }
}

func displayNumbers() {
    var cnt = 0
    for i in 100...200 {
        if (cnt == 10) {
            print()
            cnt = 0
        }
        if (isDivisible(i1: i)) {
            print(i, terminator: " ")
            cnt = cnt + 1
        }
    }
    print()
}

func sum(n: Int) -> (Double, Double){
    var sum1: Double = 0
    var sum2: Double = 0
    for i in 1...n {
        sum1 = sum1 + 1/Double(i)
        sum2 = sum2 + 1/Double(n-i+1)
    }
    return (sum1, sum2)
}

func sum2(n: Int) -> Double{
    var sum: Double = 0
    for i in 1...n {
        sum = sum + 1/(Double(i).squareRoot() + Double(i+1).squareRoot())
    }
    return sum
}

