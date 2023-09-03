//
//  ProdactVC.swift
//  Coder-swag
//
//  Created by MacBook Pro on 03/09/23.
//

import UIKit

class ProdactVC: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate{
    
    
    
    @IBOutlet weak var productCollection: UICollectionView!

    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
    }
    
    func initProducts(catecory: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: catecory.categoryTitle)
        
        navigationItem.title = catecory.categoryTitle
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProdactCell  {
            let product = products[indexPath.row]
            
            cell.updateViews(product: product)
            return cell
        } else {
            return ProdactCell()
        }            
    }
}
