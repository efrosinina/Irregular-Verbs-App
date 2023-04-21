//
//  HomeViewController.swift
//  IrregularVerbsApp
//
//  Created by Елизавета Ефросинина on 21/04/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: -- GUI VAriables
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Irregular Verbs".uppercased()
        label.font = .boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var topButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Select Verbs".localized, for: .normal)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self,
                         action: #selector(goToSelectVC),
                         for: .touchUpInside)
        return button
    }()
    
    private lazy var bottomButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Learn Verbs".localized, for: .normal)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self,
                          action: #selector(goToLearnVC),
                         for: .touchUpInside)
        return button
    }()
    
    //MARK: -- Properties
    private let cornerRadius: CGFloat = 17
    private let buttonHeigh: CGFloat = 80

    //MARK: -- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    //MARK: -- Private methods
    @objc
    private func goToSelectVC() {
        navigationController?.pushViewController(SelectVerbsViewController(),
                                                 animated: true)
    }
    
    @objc
    private func goToLearnVC() {
        navigationController?.pushViewController(LearnVerbsViewController(),
                                                 animated: true)
    }

    private func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(topButton)
        view.addSubview(bottomButton)
        
        view.backgroundColor = .white
        setupConstraints()
    }
    
    private func setupConstraints() {
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: topButton.topAnchor, constant: -80).isActive = true
        
        topButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        topButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topButton.heightAnchor.constraint(equalToConstant: buttonHeigh).isActive = true
        topButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
        
        bottomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomButton.topAnchor.constraint(equalTo: topButton.bottomAnchor, constant: 40).isActive = true
        bottomButton.heightAnchor.constraint(equalToConstant: buttonHeigh).isActive = true
        bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
    }
}

