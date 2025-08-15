//
//  WelcomeController.swift
//  FirstUIKitProject
//
//  Created by Максим Бондарев on 15.08.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let welcomeView = WelcomeView()
  
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var router: Router

    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeView.didTapStart = { [weak self] in
            guard let self = self else {return}
            self.router.pushCategoryViewController()
        }
        setup()
        layout()
    }
    
    private func setup() {
        view.addSubview(welcomeView)
    }
    
    private func layout() {
        welcomeView.pinToEdges(of: view)
    }

}
