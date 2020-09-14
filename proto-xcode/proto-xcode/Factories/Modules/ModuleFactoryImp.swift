//
//  ModuleFactoryImp.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import Foundation

final class ModuleFactoryImp {}

extension ModuleFactoryImp: WelcomeModuleFactory {
    func makeWelcomeController(viewModel: WelcomeViewModelType) -> WelcomeView {
        return WelcomeController(viewModel: viewModel)
    }
}
