//
//  DataService.swift
//  TacoApp
//
//  Created by Admin on 11/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        //Chicen Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicen Taco", shellId: 1, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicen Taco", shellId: 2, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicen Taco", shellId: 1, proteinId: 2, condimentId: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Flour Chicen Taco", shellId: 2, proteinId: 2, condimentId: 2))
        
        //Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beff Taco", shellId: 2, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour Beff Taco", shellId: 1, proteinId: 1, condimentId: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Flour Beff Taco", shellId: 2, proteinId: 1, condimentId: 2))
        
        //Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Chicen Brisket", shellId: 1, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn Chicen Brisket", shellId: 2, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Chicen Brisket", shellId: 1, proteinId: 3, condimentId: 2))
        tacoArray.append(Taco(id: 12, productName: "Plain Flour Chicen Brisket", shellId: 2, proteinId: 3, condimentId: 2))
        
        //Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Chicen Fish", shellId: 1, proteinId: 4, condimentId: 1))
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn Chicen Fish", shellId: 2, proteinId: 4, condimentId: 1))
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Chicen Fish", shellId: 1, proteinId: 4, condimentId: 2))
        tacoArray.append(Taco(id: 16, productName: "Plain Flour Chicen Fish", shellId: 2, proteinId: 4, condimentId: 2))
        
        delegate?.deliciousTacoDataLoaded()
    }
}
