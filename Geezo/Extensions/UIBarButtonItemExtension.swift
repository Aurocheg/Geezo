//
//  UINavigationController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import Foundation
import UIKit

public extension UIBarButtonItem {
    func addBackArrowButton(navigationController: UINavigationController, navigationItem: UINavigationItem) {
        if let icon = UIImage(named: "arrowBack") {
            let backBarButton = UIBarButtonItem(image: icon,
                                                style: .plain,
                                                target: navigationController,
                                                action: #selector(UINavigationController.popViewController(animated:)))
            navigationItem.leftBarButtonItem = backBarButton
        }
    }
}
