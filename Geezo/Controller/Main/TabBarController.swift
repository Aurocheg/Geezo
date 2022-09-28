//
//  MainController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBarControllerSettings()
    }
    
    private func setTabBarControllerSettings() {
        UITabBar.appearance().tintColor = ColorStyle().brand2
        
        var controllers = [UIViewController]()
        let homeController = HomeController()
        let exploreController = ExploreController()
        let radioController = RadioController()
        let accountController = AccountController()
        
        homeController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "homeIcon"), tag: 0)
        exploreController.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(named: "exploreIcon"), tag: 1)
        radioController.tabBarItem = UITabBarItem(title: "Radio", image: UIImage(named: "radioIcon"), tag: 2)
        accountController.tabBarItem = UITabBarItem(title: "Account", image: UIImage(named: "accountIcon"), tag: 3)
        
        controllers.append(homeController)
        controllers.append(exploreController)
        controllers.append(radioController)
        controllers.append(accountController)
        
        viewControllers = controllers
    }
}
