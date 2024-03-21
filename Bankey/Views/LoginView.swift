//
//  LoginView.swift
//  Bankey
//
//  Created by eren on 20.03.2024.
//

import UIKit

class LoginView: UIView {
    
    private let stackView: UIStackView = {
       
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    public let usernameTextField: UITextField = {
       
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        return textField
    }()
    
    public let passwordTextField: UITextField = {
       
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Passwords"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let dividerView: UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .secondarySystemFill
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        usernameTextField.delegate = self
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}

extension LoginView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5
        clipsToBounds = true
        backgroundColor = .secondarySystemBackground
    }
    
    func layout() {
        
        // Subviews
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        addSubview(stackView)
        
        // Constraints
        let stackViewConstraints = [
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ]
        
        // Layout
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}

// MARK: - UITextFieldDelegate

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}
