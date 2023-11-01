//
//  ViewController.swift
//  HomeScreen
//
//  Created by Bradley McClard on 10/31/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray 
        setUpTabBar()
    }
    
    private func setUpTabBar() {
        tabBar.tintColor = .black
        
        let homeVC = HomeViewController()
        let infoVC = InfoViewController()
        
        homeVC.tabBarItem.title = "Home"
        infoVC.tabBarItem.title = "Info"
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        infoVC.tabBarItem.image = UIImage(systemName: "info")
        
        setViewControllers([homeVC, infoVC], animated: true)



        
        
    }


}

