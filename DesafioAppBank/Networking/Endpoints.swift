//
//  Endpoint.swift
//  DesafioAppBank
//
//  Created by jplima on 09/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import Foundation

struct Endpoints {
    private static let baseUrl = "https://bank-app-test.herokuapp.com/api/"
    static let login = "\(baseUrl)login"
    static let statements = "\(baseUrl)statements/"
}

