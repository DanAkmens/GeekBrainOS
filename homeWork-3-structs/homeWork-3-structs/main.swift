//
//  main.swift
//  homeWork-3-structs
//
//  Created by Dainis Putans on 29/12/2020.
//

import Foundation

// 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

struct SportCar {
    let carName: String
    private let productionYear: Int?
    private var platesNumber: String?
    let trunkVolume: carActions
    let engineWorks: carActions
    let window: carActions
    
    enum carActions {
        case engineOn
        case engineOff
        case windowUp
        case windowDown
        case loadTrunk(kg: Int)
        case unloadTrunk(kg: Int)
    }
    
    func actions(action: carActions) -> String {
        
        var status: String
        
        switch action {
        case .engineOff:
            status = "Engine doesn't work"
        case .engineOn:
            status = "Engine is working"
        case .windowUp:
            status = "Windows are closed"
        case .windowDown:
            status = "Windows are open"
        case .loadTrunk(let load):
            status = "The \(self.carName) trunk loaded with \(load) kg of stuff"
        case .unloadTrunk(let unload):
            status = "The \(self.carName) trunk unloaded with \(unload) kg of stuff"
        }
        return status
    }
    
    
    func carProductionYear() {
       guard let productionYear = productionYear else { return }
       print("The car was produced in \(productionYear) year")
    }
    
    func carPlatesNumber() {
        guard let platesNumber = platesNumber else { return }
        print("The car has \(platesNumber) plates number")
    }
    
    mutating func changePlanesNumber(number: String) {
        self.platesNumber = number
    }
    
    
    init(carName: String, productionYear: Int?, platesNumber: String?, trunkVolume: carActions = .loadTrunk(kg: 50), engineWorks: carActions, window: carActions) {
        self.carName = carName
        self.productionYear = productionYear
        self.platesNumber = platesNumber
        self.trunkVolume = trunkVolume
        self.engineWorks = .engineOff
        self.window = .windowUp
    }
    
    init(carName: String, trunkVolume: carActions, engineWorks: carActions = .engineOff, window: carActions) {
        self.carName = carName
        self.productionYear = nil
        self.platesNumber = nil
        self.trunkVolume = .unloadTrunk(kg: 50)
        self.engineWorks = .engineOn
        self.window = .windowDown
    }
}

struct TruckCar {
    let carName: String
    private let productionYear: Int?
    private let platesNumber: String?
    let trunkVolume: carActions
    let engineWorks: carActions
    let window: carActions
    
    enum carActions {
        case engineOn
        case engineOff
        case windowUp
        case windowDown
        case loadTrunk(kg: Int)
        case unloadTrunk(kg: Int)
    }
    
    func actions(action: carActions) -> String {
        
        var status: String
        
        switch action {
        case .engineOff:
            status = "Engine doesn't work"
        case .engineOn:
            status = "Engine is working"
        case .windowUp:
            status = "Windows are closed"
        case .windowDown:
            status = "Windows are open"
        case .loadTrunk(let load):
            status = "The \(self.carName) trunk loaded with \(load) kg of stuff"
        case .unloadTrunk(let unload):
            status = "The \(self.carName) trunk unloaded with \(unload) kg of stuff"
        }
        return status
    }
    
    func carProductionYear() {
       guard let productionYear = productionYear else { return }
       print("The car was produced in \(productionYear) year")
    }
    
    func carPlatesNumber() {
        guard let platesNumber = platesNumber else { return }
        print("The car has \(platesNumber) plates number")
    }
   
    
    init(carName: String, productionYear: Int?, platesNumber: String?, trunkVolume: carActions = .loadTrunk(kg: 50), engineWorks: carActions, window: carActions) {
        self.carName = carName
        self.productionYear = productionYear
        self.platesNumber = platesNumber
        self.trunkVolume = trunkVolume
        self.engineWorks = .engineOff
        self.window = .windowUp
    }
    
    init(carName: String, trunkVolume: carActions, engineWorks: carActions = .engineOff, window: carActions) {
        self.carName = carName
        self.productionYear = nil
        self.platesNumber = nil
        self.trunkVolume = .unloadTrunk(kg: 50)
        self.engineWorks = .engineOn
        self.window = .windowDown
    }
    
}

var nissanLeaf = SportCar(carName: "Nissan Leaf", productionYear: 2020, platesNumber: "RX 666", trunkVolume: .loadTrunk(kg: 70), engineWorks: .engineOn, window: .windowDown)

let nissanLeafOld = SportCar(carName: "Old Model", trunkVolume: .loadTrunk(kg: 10), engineWorks: .engineOff, window: .windowDown
)
print(nissanLeaf.trunkVolume)
print(nissanLeaf.actions(action: .engineOn))
print(nissanLeaf.window)
print(nissanLeaf.changePlanesNumber(number: "ZXX 999"))

print("I'm old and my windows are \(nissanLeafOld.window))")

let dodge = TruckCar(carName: "Dodge Ram", productionYear: 2019, platesNumber: "pirate", trunkVolume: .loadTrunk(kg: 150), engineWorks: .engineOn, window: .windowUp)

print(dodge.actions(action: .engineOn))
print(dodge.carProductionYear())
