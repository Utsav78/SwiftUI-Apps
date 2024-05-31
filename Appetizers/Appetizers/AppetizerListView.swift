//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Utsav Budathoki on 9/5/2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(Mockdata.appetizers) { appetizer in
                Text(appetizer.name)
                
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
