//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Utsav Budathoki on 13/4/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.column) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                           
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
                
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
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
