//
//  HomeCoordinator.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

final class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    private var homeFactory: HomeFactory
    
    init(navigationController: UINavigationController, homeFactory: HomeFactory) {
        self.navigationController = navigationController
        self.homeFactory = homeFactory
    }
    
    func start() {
        let viewController = homeFactory.makeHome()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
