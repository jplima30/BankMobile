//
//  User.swift
//  DesafioAppBank
//
//  Created by jplima on 09/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import Foundation

struct User: Codable  {
    let userAccount: UserAccount?
    let error : ErrorLogin?
}

struct UserAccount: Codable {
    let userId: Int?
    let name: String?
    let bankAccount: String?
    let agency: String?
    let balance: Double?
}

struct ErrorLogin : Codable {
    let code : Int?
    let message : String?
}
