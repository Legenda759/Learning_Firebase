//
//  Defaults.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 14/04/22.
//

import Foundation
import KeychainSwift

class SaveUser {
    
    static var user = KeychainSwift()
    
    
    class func storeInfos(login: Bool) {
        user.set(login, forKey: "login")
    }
}
