//
//  MainNavigationController.swift
//  Audible
//
//  Created by Rickey Hrabowskie on 1/24/17.
//  Copyright © 2017 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
            // Assume user is logged in
            let homeController = HomeController()
            // viewControllers is an array of all the controllers that exist on the stack
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            
        })
    }
}

