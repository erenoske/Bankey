//
//  MainViewController.swift
//  Bankey
//
//  Created by eren on 25.03.2024.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        let summaryVC = AccountSummaryViewController()
        let moneyVC = MoveMoneyViewController()
        let moreVC = MoreViewController()


        let summaryNC = UINavigationController(rootViewController: summaryVC)
        let moneyNC = UINavigationController(rootViewController: moneyVC)
        let moreNC = UINavigationController(rootViewController: moreVC)
        
        summaryNC.tabBarItem.image = UIImage(systemName: "list.dash.header.rectangle")
        moneyNC.tabBarItem.image = UIImage(systemName: "arrow.left.arrow.right")
        moreNC.tabBarItem.image = UIImage(systemName: "ellipsis.circle")
        
        summaryNC.title = "Summary"
        moneyNC.title = "Move Money"
        moreNC.title = "More"
        
        summaryNC.navigationBar.isHidden = true
        
        let tabBarList = [summaryNC, moneyNC, moreNC]
        
        tabBar.tintColor = .label

        viewControllers = tabBarList
    }
    
}

class MoveMoneyViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemOrange
    }
}

class MoreViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemPurple
    }
}
