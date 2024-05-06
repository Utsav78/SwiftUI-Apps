//
//  ScannerViewModel.swift
//  Barcode Scanner
//
//  Created by Utsav Budathoki on 30/4/2024.
//

import SwiftUI

final class ScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? Color.red : Color.green
    }
}

