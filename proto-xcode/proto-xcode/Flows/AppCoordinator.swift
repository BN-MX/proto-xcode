//
//  AppCoordinator.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import Foundation

import UIKit

public class ApplicationCoordinator: BaseCoordinator {
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    private let moduleFactory = ModuleFactoryImp()

    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }

    override public func start() {
       startWelcomeFlow()
    }

    private func startWelcomeFlow() {
        
        let welcomeCoordinator = coordinatorFactory.makeWelcomeCoordinator(router: router, factory: moduleFactory)
        addChild(welcomeCoordinator)
        welcomeCoordinator.start()
        welcomeCoordinator.finishFlow = {
            self.removeChild(welcomeCoordinator)
        }
    }

}
