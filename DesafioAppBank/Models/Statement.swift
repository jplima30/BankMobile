//
//  Statement.swift
//  DesafioAppBank
//
//  Created by jplima on 16/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import Foundation

struct StatementList: Codable {
    let statementList: [Statement]
}

struct Statement: Codable {
    let title: String?
    let description: String?
    let date: String?
    let value: Double?
}
