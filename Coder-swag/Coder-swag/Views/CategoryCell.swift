//
//  CategoryCell.swift
//  Coder-swag
//
//  Created by MacBook Pro on 03/09/23.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.categoryTitle
    }
}
