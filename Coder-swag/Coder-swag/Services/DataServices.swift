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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "@18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$43", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$23", imageName: "hat04.png")
    ]
    
    private let hoodies = [
      Product(title: "Devslopes Logo Hoodie Grey", price: "$23", imageName: "hoodie01.png"),
      Product(title: "Devslopes Logo Hoodie Red", price: "$25", imageName: "hoodie02.png"),
      Product(title: "Devslopes  Hoodie Grey", price: "$43", imageName: "hoodie03.png"),
      Product(title: "Devslopes  Hoodie Black", price: "$33", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
     
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes badge Shirt Light Grey", price: "$28", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$34", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "$25", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$25", imageName: "shirt05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title{
        case "SHIRTS":
           return getShirts()
        case "HATS":
          return   getHats()
        case "HOODIES":
         return   getHoodies()
        case "DIGITAL":
          return  getDeigitalGoods()
        default:
           return getShirts()
        }
        
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDeigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    func getCategories() -> [Category] {
        return catecories
    }
}
