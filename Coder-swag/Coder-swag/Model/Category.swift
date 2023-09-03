//
//  File.swift
//  Coder-swag
//
//  Created by MacBook Pro on 03/09/23.
//

import Foundation

struct Category {
    private(set) public var categoryTitle: String
    private(set) public var imageName: String
    
    init(categoryTitle: String, imageName: String) {
        self.categoryTitle = categoryTitle
        self.imageName = imageName
    }
}
