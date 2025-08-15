//
//  WelcomeController.swift
//  FirstUIKitProject
//
//  Created by Максим Бондарев on 15.08.2025.
//

import UIKit

class WelcomeController: UIViewController {
    
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

class WelcomeView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.background)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var logoView: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.logo)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 42, weight: .bold)
        label.text = "Welcome to our Store"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.text = "Get your groceries in as fast as one hour"
        label.textColor = .description
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .primary
        button.setTitle("Start shopping", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func didTabButton() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension WelcomeView {
    private func setupView() {
        addSubViews(backgroundImage, logoView, titleLabel, descriptionLabel, startButton)
        
    }
    
    private func style() {
        
    }
    
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.pinToEdges(of: self)
        NSLayoutConstraint.activate([
            
            logoView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -25),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -18),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -40),
            startButton.heightAnchor.constraint(equalToConstant: 67),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90)
            
            
        ])
    }
}

