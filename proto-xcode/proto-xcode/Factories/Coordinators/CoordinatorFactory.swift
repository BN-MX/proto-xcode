//
//  CoordinatorFactory.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import Foundation
import UIKit

protocol CoordinatorFactory {
    func makeWelcomeCoordinator(router: Router, factory: WelcomeModuleFactory) -> BaseCoordinator
}
