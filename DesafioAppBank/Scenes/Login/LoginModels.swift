//
//  LoginModels.swift
//  DesafioAppBank
//
//  Created by jplima on 09/01/21.
//  Copyright (c) 2021 jplima. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Login {
    // MARK: Use cases
    
    enum UserLogin {
        struct Request {
            let user: String
            let password: String
        }
        struct Response {
            let userSigned : Bool
            var userAccount: UserAccount?
        }
        struct ViewModel {
            let userSigned : Bool
            var userAccount: UserAccount?
        }
    }
}
