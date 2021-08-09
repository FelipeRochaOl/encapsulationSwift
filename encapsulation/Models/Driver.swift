//
//  Driver.swift
//  encapsulation
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import Foundation

enum typeTravel {
    case bronze
    case silver
    case gold
}

public class Driver {
    private (set) var cpf: String
    private (set) var name: String
    private (set) var plate: String
    private var balance: Double = 0
    
    init(cpf: String, name: String, plate: String) {
        self.cpf = cpf
        self.name = name
        self.plate = plate
    }
    
    func calcCustTravel(km: Double, typeTravel: typeTravel) -> Double {
        switch typeTravel {
        case .bronze:
            self.balance += km * 1
        break
        case .silver:
            self.balance += km * 2
        break
        case .gold:
            self.balance += km * 5
        break
        }
        
        return self.balance
    }
    
    func getBalance() -> String {
        return String(self.balance)
    }
}
