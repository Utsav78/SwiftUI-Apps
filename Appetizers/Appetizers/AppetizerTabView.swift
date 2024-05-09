//
//  ContentView.swift
//  Appetizers
//
//  Created by Utsav Budathoki on 9/5/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image("house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image("person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image("bag")
                    Text("Order")
                }
        }
    }
}

#Preview {
    AppetizerTabView()
}
