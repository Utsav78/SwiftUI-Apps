//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Utsav Budathoki on 16/4/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
                
            }
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
