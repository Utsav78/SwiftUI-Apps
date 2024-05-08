//
//  SplashScreenView.swift
//  HeyReaders
//
//  Created by Utsav Budathoki on 7/5/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
            // Your splash screen content, such as logo or branding
            Text("Your App Name")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                
                
            }
        }
    }
}
