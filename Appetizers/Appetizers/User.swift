//
//  User.swift
//  Appetizers
//
//  Created by Utsav Budathoki on 2/6/2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}

