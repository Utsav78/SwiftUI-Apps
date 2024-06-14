//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Utsav Budathoki on 9/5/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
