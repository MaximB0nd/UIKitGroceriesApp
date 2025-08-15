//
//  ViewController.swift
//  FirstUIKitProject
//
//  Created by Максим Бондарев on 18.06.2025.
//

import UIKit

class FirstViewController: UIViewController {
    
    lazy var PageTitle: UILabel = { label in
        label.text = "Hello, World!"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        label.frame = CGRect(x: 50, y: 200, width: view.frame.width-100, height: 100)
        
        return label
    }(UILabel())
    
    lazy var UserImage: UIImageView = { imgView in
        imgView.image = .myIcon
        imgView.frame = CGRect(x: 80, y: PageTitle.frame.maxY+30, width: view.frame.width-160, height: 200)
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        
        return imgView
    }(UIImageView())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(PageTitle)
        view.addSubview(UserImage)
        view.addSubview(createLabel(
            text: "One",
            frame: CGRect(
                x: 20,
                y: UserImage.frame.maxY+30,
                width: view.frame.width - 40,
                height: 50)))
        
        view.addSubview(createLabel(
            text: "Two",
            frame: CGRect(
                x: 150,
                y: UserImage.frame.maxY+30,
                width: view.frame.width - 80,
                height: 50)))
        
        
    }
    
    func createLabel(text: String = "", frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100)) -> UILabel {
        let label = UILabel()
        
        label.text = text
        label.font = .systemFont(ofSize: 50)
        label.frame = frame
        
        return label
    }


}

