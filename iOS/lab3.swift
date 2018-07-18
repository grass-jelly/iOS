//
//  lab3.swift
//  iOS
//
//  Created by Linh Do on 7/18/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import Foundation
enum MyCalculatorError: Error {
    case zero
    case negative
    case outOfRange
}

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

class MyCalculator {
    func power(n: Int, p: Int) throws -> Int {
        guard n >= 0 && p >= 0 else {
            throw MyCalculatorError.negative
        }
        guard n != 0 || p != 0 else {
            throw MyCalculatorError.zero
        }
        guard n > -10 && n < 10 && p > -10 && p < 10 else {
            throw MyCalculatorError.outOfRange
        }
        return Int(pow(Double(n), Double(p)))
    }
}
