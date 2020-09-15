//
//  Constants.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import Foundation

struct Constants {
    struct Config {
        static let SERVER_URL = Bundle.main.infoDictionary!["SERVER_URL"] as? String ?? ""
    }
}
