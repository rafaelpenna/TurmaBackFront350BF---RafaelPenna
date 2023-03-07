//
//  main.swift
//  Classe
//
//  Created by Rafael Penna on 07/03/23.
//

class Plane {
    
    var company: String = "Azul"
    var wings: Int = 4
    var engines: Int = 2
    var seats: Int = 220
    var maxSpeed: Double = 827.54
    
    func fly() {
        print("This airplae is able to fly")
    }
    
    func cargoAirplane () {
        print("The airplane has capacity for cargo.")
    }
}

class Animal {
    
    var isMamifero: Bool = true
    var patas: Int = 4
    var rabo: Int = 1
    var hasCasco: Bool = false
    var isCarnivoro: Bool = true
    
    func caca() {
        print("Este animal caça")
    }
    
    func corre() {
        print("Este animal corre.")
    }
}

class Notebook {
    var screenSize: Double = 17.2
    var brand: String = "Acer"
    var hasNumPad: Bool = true
    var system: String = "Linux"
    var prica: Double = 5040.00
    
    func processData() {
        print("Is able to process data.")
    }
    
    func playGames() {
        print("Is possible to play games in this notebook.")
    }
}
