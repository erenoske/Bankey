//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by eren on 25.03.2024.
//

import UIKit

class AccountSummaryHeaderView: UIView {
    
    private let stackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let titleLabel: UILabel = {
       
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bankey"
        return label
    }()
    
    private let titleSecondLabel: UILabel = {
       
        let label = UILabel()
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Good Morning"
        return label
    }()
    
    private let titleThirdLabel: UILabel = {
       
        let label = UILabel()
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jonathan Date"
        return label
    }()
    
    private let dateTitleLabel: UILabel = {
       
        let label = UILabel()
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Oct 29, 2021"
        label.font = .systemFont(ofSize: 13, weight: .light)
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "sun.max.fill")
        imageView.tintColor = .systemYellow
        return imageView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemTeal
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(titleSecondLabel)
        stackView.addArrangedSubview(titleThirdLabel)
        stackView.addArrangedSubview(dateTitleLabel)
        addSubview(stackView)
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 90),
            imageView.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
