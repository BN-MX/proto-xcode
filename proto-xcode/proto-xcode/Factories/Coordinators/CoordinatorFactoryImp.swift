//
//  CoordinatorFactoryImp.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import UIKit

class CoordinatorFactoryImp: CoordinatorFactory {
    func makeWelcomeCoordinator(router: Router, factory: WelcomeModuleFactory) -> BaseCoordinator {
        return WelcomeCoordinator(factory: factory, router: router)
    }
    
    // MARK: private
    private func router(_ navController: UINavigationController?) -> Router {
        return RouterImp(rootController: navigationController(navController))
    }
    
    private func navigationController(_ navController: UINavigationController?) -> UINavigationController {
        if let navController = navController { return navController } else { return UINavigationController() }
    }
}
