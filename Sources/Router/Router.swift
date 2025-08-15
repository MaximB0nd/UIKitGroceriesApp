//
//  Router.swift
//  FirstUIKitProject
//
//  Created by Максим Бондарев on 15.08.2025.
//

import Foundation
import UIKit

final class Router {
    let navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    private func push(controller: UIViewController) {
        navigation.pushViewController(controller, animated: true)
    }
    
    private func pop() {
        navigation.popViewController(animated: true)
    }
    
    func pushCategoryViewController() {
        let controller = CategoryViewController(router: self)
        push(controller: controller)
    }
}
