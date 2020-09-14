//
//  WelcomeCoordinator.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import UIKit

class WelcomeCoordinator: BaseCoordinator {
    private let factory: WelcomeModuleFactory
    private let router: Router
    
    init(factory: WelcomeModuleFactory, router: Router) {
        self.router = router
        self.factory = factory
    }
    
    override func start() {
        let module = factory.makeWelcomeController(viewModel: WelcomeViewModel())
        
        router.setRootModule(module)
    }
}
