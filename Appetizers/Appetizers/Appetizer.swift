//
//  Appetizer.swift
//  Appetizers
//
//  Created by Utsav Budathoki on 29/5/2024.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct Mockdata {
    static let sampleAppetizer = Appetizer(id: 0001, 
                                           name: "Test Appetizer",
                                           description: "This is the test description",
                                           price: 12.76,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let sampleAppetizer2 = Appetizer(id: 0002,
                                           name: "Test Appetizer2",
                                           description: "This is the test description22",
                                           price: 12.7622,
                                           imageURL: "",
                                           calories: 9922,
                                           protein: 992,
                                           carbs: 992)
    
    
}
