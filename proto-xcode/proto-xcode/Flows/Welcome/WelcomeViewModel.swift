//
//  WelcomeViewModel.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import Foundation

protocol WelcomeViewModelType {
    var title: String { get }
}

class WelcomeViewModel: WelcomeViewModelType {
    var title: String
    
    init() {
        title = "Welcome Ben"
    }
}
