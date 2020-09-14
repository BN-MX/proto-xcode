//
//  WelcomeController.swift
//  proto-xcode
//
//  Created by Maxence Chantôme on 12/09/2020.
//  Copyright © 2020 BN-MX. All rights reserved.
//

import UIKit

protocol WelcomeView: BaseView {
    
}

class WelcomeController: UIViewController, WelcomeView {
    
    private var viewModel: WelcomeViewModelType
    
    init(viewModel: WelcomeViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = viewModel.title
        view.backgroundColor = .secondary
        Logger.debug(viewModel.title)
    }
}
