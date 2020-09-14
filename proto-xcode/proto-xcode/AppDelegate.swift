//
//  AppDelegate.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var rootController: UINavigationController { return self.window!.rootViewController as! UINavigationController }
    private lazy var applicationCoordinator: Coordinator = self.makeCoordinator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = BaseNavigationController()
        applicationCoordinator.start()
        return true
    }
}

extension AppDelegate {
    fileprivate func makeCoordinator() -> Coordinator {
        return ApplicationCoordinator(router: RouterImp(rootController: rootController), coordinatorFactory: CoordinatorFactoryImp())
    }
}

