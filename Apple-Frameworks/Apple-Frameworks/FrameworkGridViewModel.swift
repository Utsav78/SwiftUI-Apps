//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Utsav Budathoki on 16/4/2024.
//

import SwiftUI
import Combine

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
