//
//  main.swift
//  homeWork-5-protocols
//
//  Created by Dainis Putans on 13/01/2021.
//

import Foundation


enum DifferentCars {
    case trunkCar
    case sportCar
}

enum CarColor {
    case red
    case black
}

enum Action: String {
    case up = "Window is closed"
    case down = "Window is opened"
    case on = "Engine is working"
    case off = "Engine stoped"
}

// 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
protocol Car {
    var name: DifferentCars { get set }
    
    func getName()
}

// 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
extension Car {
    
    func getName() {
        print("The car name is \(name)")
        // return DifferentCars.
    }
    
    func openWindows(status: Action) -> String {
        switch status {
        case .up:
            print("\(self.name) \(status.rawValue)")
            return status.rawValue
        case .down:
            print("\(self.name) \(status.rawValue)")
            return status.rawValue
        default: break
        }
        return "Action applies to engine"
    }
    
    func engineStart(status: Action) -> String {
        switch status {
        case .on:
            print("\(self.name) \(status.rawValue)")
            return status.rawValue
        case .off:
            print("\(self.name) \(status.rawValue)")
            return status.rawValue
        default: break
        }
        return "Action applies to windows"
    }
}

// 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
class TrunkCar: Car {
    
    var name: DifferentCars = .trunkCar
    var tank: Int = 0
    
    var tankVolume: Int
    
    init(tankVolume: Int) {
        self.tankVolume = tankVolume
    }
    
    func fillUpTank(kubikMeters: Int) -> Int? {
        switch kubikMeters {
        case 0:
            print("The tank is empty")
            return 0
        case 50:
            print("The tank is 1/2 full")
            return 50
        case 100:
            print("The tank is full")
            return 100
        default:
            print("Can't access data")
            return nil
        }
    }
}

class SportCar: Car {
    
    var name: DifferentCars = .sportCar
    var color: CarColor = .red
    var speed: Int
    
    init(speed: Int) {
        self.speed = speed
    }
    
    func maxSpeed() {
        print("Maximum speed is \(speed)")
    }
}

// 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
extension TrunkCar: CustomStringConvertible {

    var description: String {
        func getName() -> String {
            return "The car name is \(name) and his tank is filled \(tankVolume) %"
        }
        return getName()
    }
}

extension SportCar: CustomStringConvertible {

    var description: String {
        func getName() -> String {
            return "The car name is \(name) and his color is \(color) with a maximum speed of \(speed) km/h"
        }
        return getName()
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
// 6. Вывести сами объекты в консоль.
var mySportCar = SportCar(speed: 200)
mySportCar.openWindows(status: .up)
mySportCar.engineStart(status: .off)
print(mySportCar.description)

var myHeavyDutyTrack = TrunkCar(tankVolume: 50)
myHeavyDutyTrack.openWindows(status: .down)
mySportCar.engineStart(status: .on)
print(myHeavyDutyTrack.description)
