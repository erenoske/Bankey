//
//  ViewController.swift
//  Bankey
//
//  Created by eren on 20.03.2024.
//

import UIKit

class LoginViewController:  UIViewController {
    
    let loginView = LoginView()
    
    var username: String? {
        return loginView.usernameTextField.text
    }
    
    var password: String? {
        return loginView.passwordTextField.text
    }
    
    private let titleLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bankey"
        label.font = .systemFont(ofSize: 35)
        label.textAlignment = .center
        return label
    }()
    
    private let signInButton: UIButton = {
       
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .filled()
        button.configuration?.imagePadding = 8
        button.setTitle("Sign In", for: [])
        return button
    }()
    
    private let errorMessageLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .systemRed
        label.numberOfLines = 0
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        layout()
    }

}

extension LoginViewController {
    
    private func layout() {
        
        // Subviews
        view.addSubview(titleLabel)
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMessageLabel)
        
        // Constraints
        let titleLabelConstraints = [
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: loginView.topAnchor, constant: -50)
        ]
        
        
        let loginViewConstraints = [
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
        ]
        
        let buttonConstraints = [
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ]
        
        let errorMessageLabelConstraints = [
            errorMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMessageLabel.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            errorMessageLabel.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor)
        ]
        
        // Layout
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(loginViewConstraints)
        NSLayoutConstraint.activate(buttonConstraints)
        NSLayoutConstraint.activate(errorMessageLabelConstraints)
    }
    
}

// MARK: - Actions

extension LoginViewController {
    
    @objc func signInTapped() {
        errorMessageLabel.isHidden = true
        login()
    }
    
    private func login() {
        
        guard let username = username, let password = password else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
        if username.isEmpty || password.isEmpty {
            configureView(with: "Username / password cannot be blank")
            return
        }
        
        if username == "Eren" && password == "welcome" {
            signInButton.configuration?.showsActivityIndicator = true
        } else {
            configureView(with: "Incorrect username / password")
        }
    }
    
    private func configureView(with message: String) {
        errorMessageLabel.isHidden = false
        errorMessageLabel.text = message
    }
}
