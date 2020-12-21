//
//  main.swift
//  quadratic-equation
//
//  Created by Dainis Putans on 11/12/2020.
//

import Foundation

// quadratic equation
func solveEquation(a: Double, b: Double, c: Double) -> (sum: Double, subtract: Double) {
    
    let newB = pow(b, 2)
    return ((-b + sqrt(newB - (b * a * c))) / (2 * a), (-b - sqrt(newB - (b * a * c))) / (2 * a))
}


var newResult = solveEquation(a: 1, b: 4, c: -21)
print(newResult.sum)
print(newResult.subtract)

// Right triangle
func solveRightTriangle(a: Double, b: Double) -> (perimeter: Double, square: Double, hypotenuse: Double) {
    
    let c = sqrt(a * a + b * b)
    return ((a + b + c), (a * b) / 2, sqrt(sqrt(a) + sqrt(b)))
}

let myHypotenuse = solveRightTriangle(a: 6, b: 8)
// print(myHypotenuse.hypotenuse)

// bank deposit
func bankDepositCalculator(amountOfDeposit: Int, percentage: Int, yearsOfDeposit: Int) -> Int {
    
    var firstYear = (amountOfDeposit * percentage) / 100
    print(firstYear)
    for _ in 1..<yearsOfDeposit {
        firstYear += (amountOfDeposit * percentage) / 100
        print(firstYear)
    }
    return firstYear + amountOfDeposit
}


let myDeposit = bankDepositCalculator(amountOfDeposit: 100, percentage: 8, yearsOfDeposit: 3)
print(myDeposit)
