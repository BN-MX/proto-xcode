//
//  Router.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import UIKit

public protocol Router: Presentable {
    func present(_ module: Presentable?)
    func present(_ module: Presentable?, animated: Bool)
    func openUrl(url: URL?)
    
    func push(_ module: Presentable?)
    func push(_ module: Presentable?, animated: Bool)
    func push(_ module: Presentable?, animated: Bool, completion: (() -> Void)?)
    
    func popModule()
    func popModule(animated: Bool)
    
    func dismissModule()
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    func setRootModule(_ module: Presentable?)
    
    @discardableResult func popTo<T>(module: T.Type) -> T?
    func popToRootModule(animated: Bool)
}
