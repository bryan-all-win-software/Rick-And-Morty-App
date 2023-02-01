//
//  AppCoordinador.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

final class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    private var appFactory: AppFactory
    
    init(navigationController: UINavigationController, appFactory: AppFactory, windows: UIWindow?) {
        self.navigationController = navigationController
        self.appFactory = appFactory
        windows?.rootViewController = navigationController
        windows?.makeKeyAndVisible()
    }
    
    func start() {
        let _ = appFactory.makeCoordinator(navigationController: self.navigationController).start()
    }
    
}
