//
//  main.swift
//  home-work-4-classes
//
//  Created by Dainis Putans on 10/01/2021.
//

import Foundation

enum Brands {
    case Mercedess, BMW, Toyota, Honda, Volvo, Subaru, Peugeot, Skoda
}

enum TypeCar {
    case sedan, coupe, cabrio, hetchbach
}

enum Color: String {
    case Yellow = "Yellow color",
         Red = "Red color",
         Blue = "Blue color",
         Green = "Green color",
         Orange = "Orange color",
         Black = "Black color",
         White = "White color",
         Metallic = "Metallic color",
         Grey = "Grey color"
}

enum NumberOfDoors {
    case four, two
}

enum Lights {
    case On, Off
}

class car {

    let brandName: Brands
    var name: String
    var type: TypeCar
    private var color: Color
    let doorNumber: NumberOfDoors

    init(brandName: Brands, name: String, type: TypeCar, color: Color, doorNumber: NumberOfDoors) {
        self.brandName = brandName
        self.name = name
        self.type = type
        self.color = color
        self.doorNumber = doorNumber
    }
    
    func changeColor(newColor: Color) -> String {
        return newColor.rawValue
    }
    
    private func lightStatus(light: Lights) {
        switch light {
        case .On:
            print("Light is On")
        case .Off:
            print("Light is Off")
        }
    }
   
}


