//
//  ViewController.swift
//  encapsulation
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var balanceTotal: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let driver = Driver(cpf: "111.111.111-11", name: "Felipe Rocha", plate: "PLACA")
        
        self.balanceTotal = driver.calcCustTravel(km: 3.000, typeTravel: .bronze)
        print("The travel \(typeTravel.bronze) to driver \(driver.name) => \(self.balanceTotal)")
        
        self.balanceTotal = driver.calcCustTravel(km: 4.000, typeTravel: .silver)
        print("The travel \(typeTravel.silver) to driver \(driver.name) => \(self.balanceTotal)")
        
        self.balanceTotal = driver.calcCustTravel(km: 23.000, typeTravel: .gold)
        print("The travel \(typeTravel.gold) to driver \(driver.name) => \(self.balanceTotal)")
    }


}

