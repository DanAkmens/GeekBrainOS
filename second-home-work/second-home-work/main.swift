//
//  main.swift
//  second-home-work
//
//  Created by Dainis Putans on 24/12/2020.
//

import Foundation

// Написать функцию, которая определяет, четное число или нет.
func evenNumber(number: Int) -> String {
    if number % 2 == 0 {
        return "Number is even"
    } else {
        return "Number is odd"
    }
}

print(evenNumber(number: 10))
print(evenNumber(number: 13))

// Написать функцию, которая определяет, делится ли число без остатка на 3.
func divideByThreeZero(number: Int) -> String {
    if number % 3 == 0 {
        return "число делится без остатка на 3"
    } else {
        return "число не делится без остатка на 3"
    }
}

print(divideByThreeZero(number: 40))

// 3. Создать возрастающий массив из 100 чисел.
func arrayTillHundred() -> [Int] {
    var newArray: [Int] = []
    for i in (1...100) {
        newArray.append(i)
    }
    return newArray
}

// print(arrayTillHundred())

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
func arrayTillHundredWithRemovedData() -> [Int] {
    var newArray: [Int] = []
    for i in (1...100) {
        if i % 2 == 0 {
            continue
        } else if i % 3 == 0 {
            continue
        } else {
            newArray.append(i)
        }
    }
    return newArray
}

// print(arrayTillHundredWithRemovedData())

// 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacciData(n: Int) -> [Double] {
    var data: [Double] = [1, 1]
    (2...n).forEach { i in
        data.append(data[i - 1] + data[i - 2])
    }
    return data
}
// print(fibonacciData(n: 100))

// 6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги

func simpleNumbers(dataPassed: [Int]) -> [Int] {
    var simple: [Int] = []
    var myArray = dataPassed
    while let p = myArray.first {
        simple.append(p)
        myArray = myArray.filter { $0 % p != 0 }
    }
    return simple
}
print(simpleNumbers(dataPassed: Array(2...100)))
