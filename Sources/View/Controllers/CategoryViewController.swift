//
//  CategoryViewController.swift
//  GroceriesApp
//
//  Created by Максим Бондарев on 15.08.2025.
//

import UIKit

class CategoryViewController: UIViewController {
    
    private let categoryView = CategoryView()
    
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
        setup()
        layout()
        setupNavigationController()
    }
    
    private func setup() {
        view.addSubview(categoryView)
    }

    private func layout() {
        categoryView.pinToEdges(of: view)
    }
    
    private func setupNavigationController() {
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}
