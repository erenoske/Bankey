//
//  AccountSummaryCellTableViewCell.swift
//  Bankey
//
//  Created by eren on 25.03.2024.
//

import UIKit

class AccountSummaryTableViewCell: UITableViewCell {
    
    private let underlineView: UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = appColor
        return view
    }()
    
    private let typeLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
        label.adjustsFontForContentSizeCategory = true
        label.text = "Account type"
        return label
    }()
    
    private let nameLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.text = "Account name"
        return label
    }()
    
    private let stackView: UIStackView = {
       
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()
    
    private let balanceLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textAlignment = .right
        label.text = "Some balance"
        return label
    }()
    
    private let balanceAmountLabel: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.text = "$929,466.63"
        return label
    }()
    
    private let chevronImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let chevronImage = UIImage(systemName: "chevron.right")?.withTintColor(appColor, renderingMode: .alwaysOriginal)
        imageView.image = chevronImage
        return imageView
    }()
    
    static let identifier = "AccountSummaryCellTableViewCell"
    static let rowHeight: CGFloat = 100

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AccountSummaryTableViewCell {
    
    private func setup() {
        contentView.addSubview(typeLabel) // important! Add to contentView
        contentView.addSubview(underlineView)
        contentView.addSubview(nameLabel)
        
        stackView.addArrangedSubview(balanceLabel)
        stackView.addArrangedSubview(balanceAmountLabel)
        contentView.addSubview(stackView)
        
        contentView.addSubview(chevronImageView)
    }
    
    private func layout() {
        NSLayoutConstraint.activate([
            typeLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 2),
            typeLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            underlineView.topAnchor.constraint(equalToSystemSpacingBelow: typeLabel.bottomAnchor, multiplier: 1),
            underlineView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            underlineView.widthAnchor.constraint(equalToConstant: 60),
            underlineView.heightAnchor.constraint(equalToConstant: 4),
            nameLabel.topAnchor.constraint(equalTo: underlineView.bottomAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: underlineView.bottomAnchor, multiplier: 0),
            stackView.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 4),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 4),
            chevronImageView.topAnchor.constraint(equalToSystemSpacingBelow: underlineView.bottomAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: chevronImageView.trailingAnchor, multiplier: 1)
        ])
    }
}
