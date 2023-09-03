//
//  DataServices.swift
//  Coder-swag
//
//  Created by MacBook Pro on 03/09/23.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let catecories = [
    Category(categoryTitle: "SHIRTS", imageName: "shirts.png"),
    Category(categoryTitle: "HOODIES", imageName: "hoodies.png"),
    Category(categoryTitle: "HATS", imageName: "hats.png"),
    Category(categoryTitle: "DIGITAL", imageName: "digital.png")
    ]
    func getCategories() -> [Category] {
        return catecories
    }
}
