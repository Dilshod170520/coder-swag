//
//  ViewController.swift
//  Coder-swag
//
//  Created by MacBook Pro on 03/09/23.
//

import UIKit

class CategoryVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setupTBVDelegates()
    }
    private func setupTBVDelegates() {
        categoryTable.dataSource = self
        categoryTable.delegate  = self
        categoryTable.rowHeight = 170
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
}

