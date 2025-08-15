//
//  CategoryViewController.swift
//  GroceriesApp
//
//  Created by Максим Бондарев on 15.08.2025.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var router: Router
    
    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }
    

}
