//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Utsav Budathoki on 13/4/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    
    var body: some View {
        LazyVGrid(columns: column) {
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
