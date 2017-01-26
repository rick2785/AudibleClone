//
//  UserDefaults+helpers.swift
//  Audible
//
//  Created by Rickey Hrabowskie on 1/24/17.
//  Copyright © 2017 Rickey Hrabowskie. All rights reserved.
//

import Foundation


extension UserDefaults {
    
    // Enums keep multiple string instances safe
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
